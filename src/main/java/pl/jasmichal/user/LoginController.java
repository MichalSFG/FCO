package pl.jasmichal.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String loginForm() {
        return "login";
    }

    @PostMapping("/login")
    public void login(@RequestParam String email, @RequestParam String password) {

    }
}
