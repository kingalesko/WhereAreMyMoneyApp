package pl.coderslab.dao;


import org.springframework.stereotype.Repository;
import pl.coderslab.entity.FamilyMembers;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class FamilyMembersDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void persist (FamilyMembers familyMember){
        entityManager.persist(familyMember);
    }

    public FamilyMembers merge(FamilyMembers familyMember) {
        return entityManager.merge(familyMember);
    }

    public FamilyMembers findById(long id) {
        return entityManager.find(FamilyMembers.class, id);
    }

    public void remove(FamilyMembers familyMember) {
        entityManager.remove(entityManager.contains(familyMember) ? familyMember : entityManager.merge(familyMember));
    }

    public List<FamilyMembers> findAll() {
        Query query = entityManager.createQuery("SELECT a from FamilyMembers a");
        return query.getResultList();
    }


}
