package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Expenses;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public class ExpensesDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void persist(Expenses expenses){
        entityManager.persist(expenses);
    }

    public Expenses merge(Expenses expenses){
       return entityManager.merge(expenses);
    }

    public Expenses findById(Long id){
        return entityManager.find(Expenses.class, id);
    }
    public void remove(Expenses expenses) {
        entityManager.remove(entityManager.contains(expenses) ? expenses : entityManager.merge(expenses));
    }

    public List<Expenses> findAll() {
        Query query = entityManager.createQuery("SELECT a from Expenses a");
        return query.getResultList();
    }
    public List<Expenses>getExpensesByDate(){
        Query query1 = entityManager.createQuery("select e from Expenses e WHERE FUNCTION('MONTH', e.date) = FUNCTION('MONTH', FUNCTION('NOW()')) AND function('YEAR', e.date) = FUNCTION('YEAR', FUNCTION('NOW()'))");
        return query1.getResultList();
    }
}
