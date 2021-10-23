package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.LoanCategory;
import pl.coderslab.entity.Months;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class MonthsDao {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Months> findAll() {
        Query query = entityManager.createQuery("SELECT m from Months m");
        return query.getResultList();
    }
}
