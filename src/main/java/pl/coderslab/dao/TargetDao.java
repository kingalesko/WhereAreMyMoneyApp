package pl.coderslab.dao;


import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Expenses;
import pl.coderslab.entity.Target;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class TargetDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void persist(Target target){
        entityManager.persist(target);
    }

    public Target merge(Target target){
        return entityManager.merge(target);
    }

    public Target findById(Long id){
        return entityManager.find(Target.class, id);
    }
    public void remove(Target target) {
        entityManager.remove(entityManager.contains(target) ? target : entityManager.merge(target));
    }

    public List<Expenses> findAll() {
            Query query = entityManager.createQuery("SELECT a from Target a");
        return query.getResultList();
    }
}
