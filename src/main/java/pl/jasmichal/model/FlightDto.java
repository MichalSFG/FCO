package pl.jasmichal.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Map;

@JsonIgnoreProperties(ignoreUnknown = true)
public class FlightDto {

    @JsonProperty("status")
    private String flightStatus;

    @JsonProperty("type")
    private String type;

    private String deptTime;
    private String arrTime;
    private String deptAirport;
    private String arrAirport;
    private String flightNumber;
    private String airlineName;
    private String iataCode;

    @JsonProperty("arrival")
    private void getArrAirport(Map<String, String> airport) {
        this.arrAirport = airport.get("iataCode");
        this.arrTime = airport.get("scheduledTime");
    }

    @JsonProperty("departure")
    private void getDeptAirport(Map<String, String> airport) {
        this.deptAirport = airport.get("iataCode");
        this.deptTime = airport.get("scheduledTime");
    }

    @JsonProperty("flight")
    private void getFlightNumber(Map<String,String> num) {
        this.flightNumber = num.get("number");
    }

    @JsonProperty("airline")
    private void getAirlineDetails(Map<String, String> name) {
        this.airlineName = name.get("name");
        this.iataCode = name.get("iataCode");
    }

    public String getDeptTime() {
        return deptTime;
    }

    public void setDeptTime(String deptTime) {
        this.deptTime = deptTime;
    }

    public String getArrTime() {
        return arrTime;
    }

    public void setArrTime(String arrTime) {
        this.arrTime = arrTime;
    }

    public String getArrAirport() {
        return arrAirport;
    }

    public void setArrAirport(String arrAirport) {
        this.arrAirport = arrAirport;
    }

    public String getDeptAirport() {
        return deptAirport;
    }

    public void setDeptAirport(String deptAirport) {
        this.deptAirport = deptAirport;
    }

    public String getIataCode() {
        return iataCode;
    }

    public void setIataCode(String iataCode) {
        this.iataCode = iataCode;
    }

    public String getAirlineName() {
        return airlineName;
    }

    public void setAirlineName(String airlineName) {
        this.airlineName = airlineName;
    }

    public String getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(String flightNumber) {
        this.flightNumber = flightNumber;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFlightStatus() {
        return flightStatus;
    }

    public void setFlightStatus(String flightStatus) {
        this.flightStatus = flightStatus;
    }

}
