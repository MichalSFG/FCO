package pl.jasmichal.model;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "flights")
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long flightNumber;
    private String departureAirport;
    private String arrivalAirport;
    private LocalDateTime scheduledTimeOfDept;
    private LocalDateTime scheduledTimeOfArr;
    private LocalDateTime created;

    @PrePersist
    public void prePersist() {
        created = LocalDateTime.now();
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(Long flightNumber) {
        this.flightNumber = flightNumber;
    }

    public String getDepartureAirport() {
        return departureAirport;
    }

    public void setDepartureAirport(String departureAirport) {
        this.departureAirport = departureAirport;
    }

    public String getArrivalAirport() {
        return arrivalAirport;
    }

    public void setArrivalAirport(String arrivalAirport) {
        this.arrivalAirport = arrivalAirport;
    }

    public LocalDateTime getScheduledTimeOfDept() {
        return scheduledTimeOfDept;
    }

    public void setScheduledTimeOfDept(LocalDateTime scheduledTimeOfDept) {
        this.scheduledTimeOfDept = scheduledTimeOfDept;
    }

    public LocalDateTime getScheduledTimeOfArr() {
        return scheduledTimeOfArr;
    }

    public void setScheduledTimeOfArr(LocalDateTime scheduledTimeOfArr) {
        this.scheduledTimeOfArr = scheduledTimeOfArr;
    }
}
