package pl.edu.pjwstk.jazapi.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import pl.edu.pjwstk.jazapi.model.AddOn;
import pl.edu.pjwstk.jazapi.model.Car;
import pl.edu.pjwstk.jazapi.repository.AddOnRepository;
import pl.edu.pjwstk.jazapi.repository.CarRepository;

import java.util.*;

import static pl.edu.pjwstk.jazapi.util.Utils.fallbackIfNull;

@Service
public class CarService extends CrudService<Car> {
    private final AddOnRepository addOnRepository;

    CarRepository repository;

    public List<Car> getAll(int pageNo, int pageSize, String sortBy) {
        Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));

        Page<Car> pagedResult = repository.findAll(paging);

        if(pagedResult.hasContent()) {
            return pagedResult.getContent();
        } else {
            return new ArrayList<>();
        }
    }

    public CarService(CarRepository carRepository, AddOnRepository addOnRepository) {
        super(carRepository);
        this.addOnRepository = addOnRepository;
    }

    @Override
    public Car createOrUpdate(Car updateEntity) {
        if (updateEntity.getId() == null) {
            System.out.println(updateEntity);
            var addons = updateEntity.getAddons();
            updateEntity.setAddons(Collections.emptySet());
            Car insertedCar = repository.save(updateEntity);

            addons.forEach(addon -> addon.setCar(insertedCar));
            addOnRepository.saveAll(addons);

            return insertedCar;
        }

        Optional<Car> carInDb = repository.findById(updateEntity.getId());

        if (carInDb.isPresent()) {
            var dbEntity = carInDb.get();

            dbEntity.setManufacturer(fallbackIfNull(updateEntity.getManufacturer(), dbEntity.getManufacturer()));
            dbEntity.setModel(fallbackIfNull(updateEntity.getModel(), dbEntity.getModel()));
            dbEntity.setYearOfProduction(fallbackIfNull(updateEntity.getYearOfProduction(), dbEntity.getYearOfProduction()));
            var insertedCar = repository.save(dbEntity);

            Set<AddOn> addons = updateEntity.getAddons();
            addons.forEach(addon -> addon.setCar(dbEntity));
            addOnRepository.saveAll(addons);

            return insertedCar;
        } else {
            updateEntity = repository.save(updateEntity);

            return updateEntity;
        }
    }
}