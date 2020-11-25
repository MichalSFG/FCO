package pl.jasmichal.controller;

import ch.qos.logback.classic.Logger;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.exc.MismatchedInputException;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.jasmichal.service.FlightDao;

import java.io.IOException;
import java.net.URL;
import java.util.List;

@Controller
@RequestMapping("/flight")
public class FlightController {

    private FlightDao flightDao;

    public FlightController(FlightDao flightDao) {
        this.flightDao = flightDao;
    }

    private Object[] flightDetails;
    private String paxSeat;

    private final Logger logger = (Logger) LoggerFactory.getLogger(FlightController.class);

    @GetMapping("/homepage")
    public String getFlightNumber() {
        return "test";
    }

    @PostMapping("/homepage")
    public String getFlightData(@RequestParam long flightNumber, Model model) throws IOException {
        logger.info("FR " + flightNumber);
        try {
            String api = "http://aviation-edge.com/v2/public/timetable?key=&flight_iata=FR"
                    + flightNumber + "&type=arrival";

            ObjectMapper objectMapper = new ObjectMapper();
            URL url = new URL(api);
            flightDetails = objectMapper.readValue(url, Object[].class);

            model.addAttribute("flight", flightDetails);
            return "flightInfo";
        } catch (MismatchedInputException e) {
            logger.warn("no good");
            return "home";
        }
    }

    @PostMapping("/seatNo")
    public String getPaxSeatNo(@RequestParam String seatNum, @RequestParam String seatLetter, Model model) {
        paxSeat = seatNum + seatLetter;
        model.addAttribute("seat", paxSeat);
        model.addAttribute("flight", flightDetails);
        return "seatInfo";
    }

    @PostMapping("/seatsToSwap")
    public String getSeatsToSwap(@RequestParam List<String> seats, Model model) {
        logger.info(String.valueOf(seats));
        model.addAttribute("seats", seats);
        model.addAttribute("seat", paxSeat);
        model.addAttribute("flight", flightDetails);
        return "taskAccomplished";
    }
}
