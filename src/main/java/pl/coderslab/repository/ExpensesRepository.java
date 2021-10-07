package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Expenses;

@Repository
public interface ExpensesRepository extends JpaRepository<Expenses, Long> {


}