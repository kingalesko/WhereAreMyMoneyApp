package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Income;

@Repository
public interface IncomeRepository extends JpaRepository<Income, Long> {


}