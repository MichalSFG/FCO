package pl.jasmichal.controller;

import ch.qos.logback.classic.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import pl.jasmichal.model.Flight;
import pl.jasmichal.model.FlightDto;
import pl.jasmichal.service.FlightService;

import java.time.LocalDateTime;
import java.util.List;

@Controller
public class FlightDtoController {

    private final FlightService flightService;

    private final Logger logger = (Logger) LoggerFactory.getLogger(FlightController.class);

    public FlightDtoController(FlightService flightService) {
        this.flightService = flightService;
    }

    @GetMapping("/dto")
    public String getDtoForm() {
        return "home";
    }

    @PostMapping("/dto")
    public String getFlightDetails(@RequestParam long flightNumber, Model model) {
        logger.info("FR " + flightNumber);
        String api = "http://aviation-edge.com/v2/public/timetable?key=&flight_iata=FR"
                + flightNumber + "&type=arrival";

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<FlightDto[]> responseFlights = restTemplate.getForEntity(api, FlightDto[].class);
        FlightDto[] flights = responseFlights.getBody();

        assert flights != null;
        Flight flight = new Flight();
        flight.setFlightNumber(Long.parseLong(flights[0].getFlightNumber()));
        flight.setDepartureAirport(flights[0].getDeptAirport());
        flight.setArrivalAirport(flights[0].getArrAirport());
        flight.setScheduledTimeOfDept(LocalDateTime.parse(flights[0].getDeptTime()));
        flight.setScheduledTimeOfArr(LocalDateTime.parse(flights[0].getArrTime()));
        flight.prePersist();
        flightService.add(flight);

        model.addAttribute("flights", flights);
        return "flightDto";
    }

    @RequestMapping("/all")
    public String getAllFlights(Model model) {
        List<Flight> flights = flightService.getAllFlights();
        model.addAttribute("flights", flights);
        return "allFlights";
    }

}
