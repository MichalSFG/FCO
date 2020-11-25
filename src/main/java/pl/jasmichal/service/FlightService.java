package pl.jasmichal.service;

import org.springframework.stereotype.Service;
import pl.jasmichal.model.Flight;

import java.util.List;
import java.util.Optional;

@Service
public interface FlightService {

    List<Flight> getAllFlights();

    void add(Flight flight);

    Optional<Flight> get(long flightNumber);

    void delete(long flightNumber);

    void update(Flight flight);


}
