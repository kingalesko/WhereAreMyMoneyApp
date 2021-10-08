package pl.coderslab.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.ExpenseCategory;
import pl.coderslab.entity.Expenses;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ExpenseCategoryDao {
    @PersistenceContext
    private EntityManager entityManager;

    public List<ExpenseCategory> findAll() {
        Query query = entityManager.createQuery("SELECT a from ExpenseCategory a");
        return query.getResultList();
    }
}
