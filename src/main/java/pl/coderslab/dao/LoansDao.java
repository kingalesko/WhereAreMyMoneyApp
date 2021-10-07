package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Loans;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class LoansDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void persist (Loans loans){
        entityManager.persist(loans);
    }
    public Loans merge (Loans loans){
        return entityManager.merge(loans);
    }
    public Loans findById(Long id){
        return entityManager.find(Loans.class, id);
    }
    public void remove(Loans loans){
        entityManager.remove(entityManager.contains(loans) ? loans : entityManager.merge(loans));
    }
    public List<Loans> findAll(){
        Query query = entityManager.createQuery("SELECT a from Loans a");
        return query.getResultList();
    }
}
