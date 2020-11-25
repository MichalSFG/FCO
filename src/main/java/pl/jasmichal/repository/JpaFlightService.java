package pl.jasmichal.repository;

import org.springframework.stereotype.Repository;
import pl.jasmichal.model.Flight;
import pl.jasmichal.service.FlightService;

import java.util.List;
import java.util.Optional;

@Repository
public class JpaFlightService implements FlightService {

    private final FlightRepository flightRepository;

    public JpaFlightService(FlightRepository flightRepository) {
        this.flightRepository = flightRepository;
    }

    @Override
    public List<Flight> getAllFlights() {
        return flightRepository.findAll();
    }

    @Override
    public void add(Flight flight) {
        flightRepository.save(flight);
    }

    @Override
    public Optional<Flight> get(long flightNumber) {
        return Optional.of(flightRepository.findByFlightNumber(flightNumber));
    }

    @Override
    public void delete(long flightNumber) {
        Flight flight = flightRepository.findByFlightNumber(flightNumber);
        flightRepository.delete(flight);
    }

    @Override
    public void update(Flight flight) {
        flightRepository.save(flight);
    }
}
