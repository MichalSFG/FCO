package pl.jasmichal.service;

import org.springframework.stereotype.Repository;
import pl.jasmichal.model.Flight;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class FlightDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Flight flight) {
        entityManager.persist(flight);
    }

    public Flight findById(long id) {
        return entityManager.find(Flight.class, id);
    }

    public void update(Flight flight) {
        entityManager.merge(flight);
    }

    public void delete(Flight flight) {
        entityManager.remove(entityManager.contains(flight) ? flight : entityManager.merge(flight));
    }

}
