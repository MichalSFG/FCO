package pl.jasmichal.controller;

import ch.qos.logback.classic.Logger;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FlightController {

    private final Logger logger = (Logger) LoggerFactory.getLogger(FlightController.class);

    @GetMapping
    public String getFlightNumber() {
        return "home";
    }

    @PostMapping
    public String getFlightData(@RequestParam long flightNumber) {
        logger.info("FR " + flightNumber);
        String url = "http://aviation-edge.com/v2/public/flights?key=&flightIata=FR" + flightNumber;
        return "redirect:" + url;

    }

}
