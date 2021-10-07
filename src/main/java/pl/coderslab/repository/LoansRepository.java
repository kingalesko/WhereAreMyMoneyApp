package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Loans;

@Repository
public interface LoansRepository extends JpaRepository<Loans, Long> {


}