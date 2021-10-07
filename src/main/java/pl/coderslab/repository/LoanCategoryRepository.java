package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.LoanCategory;

@Repository
public interface LoanCategoryRepository extends JpaRepository<LoanCategory, Long> {


}