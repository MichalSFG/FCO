package pl.jasmichal.user;


import org.springframework.stereotype.Service;

@Service
public interface UserService {

    void add(User user);
}
