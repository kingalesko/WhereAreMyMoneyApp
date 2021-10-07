package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Target;

@Repository
public interface TargetRepository extends JpaRepository<Target, Long> {


}