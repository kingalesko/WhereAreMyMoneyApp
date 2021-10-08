package pl.coderslab.dao;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.ExpenseCategory;
import pl.coderslab.entity.LoanCategory;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class LoanCategoryDao {

    @PersistenceContext
    private EntityManager entityManager;

    public List<LoanCategory> findAll() {
        Query query = entityManager.createQuery("SELECT a from LoanCategory a");
        return query.getResultList();
    }

}
