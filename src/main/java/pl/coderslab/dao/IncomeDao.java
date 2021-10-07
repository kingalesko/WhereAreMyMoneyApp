package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Income;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class IncomeDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void persist(Income income){
        entityManager.persist(income);
    }
    public Income merge(Income income){
        return entityManager.merge(income);
    }
    public Income findById(Long id){
        return entityManager.find(Income.class,id);
    }
    public void remove(Income income){
        entityManager.remove(entityManager.contains(income) ? income : entityManager.merge(income));
    }
    public List<Income> findAll(){
        Query query = entityManager.createQuery("select i from Income i");
        return query.getResultList();
    }
}
