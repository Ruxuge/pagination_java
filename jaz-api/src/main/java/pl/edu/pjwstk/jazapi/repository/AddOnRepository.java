package pl.edu.pjwstk.jazapi.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import pl.edu.pjwstk.jazapi.model.AddOn;

@Repository
public interface AddOnRepository extends PagingAndSortingRepository<AddOn, Long> {
}
