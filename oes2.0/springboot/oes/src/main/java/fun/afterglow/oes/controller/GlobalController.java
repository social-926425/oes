package fun.afterglow.oes.controller;

import fun.afterglow.oes.service.GlobalService;
import fun.afterglow.oes.entity.Presonnel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.GenericServlet;
import javax.servlet.http.HttpSession;

@Controller("globalController")
public class GlobalController {

    @Autowired
    private GlobalService globalService;
    @RequestMapping("/to_login")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/login")
    public String Login(HttpSession session, @RequestParam Integer number, @RequestParam String password) {
        Presonnel presonnel = globalService.login(number, password);
        if (presonnel == null) {
            return "redirect:to_login";
        }
        session.setAttribute("presonnel", presonnel);
        return "redirect:self";
    }
    @RequestMapping("/")
    public String root() {
        return "redirect:self";
    }

    @RequestMapping(value = "/to_swlf")
    public String toSelf(){
        return "self";
    }

    @RequestMapping("/self")
    public String self() {
        return "self";
    }

    @RequestMapping("/quit")
    public String quit(HttpSession session) {
        session.setAttribute("presonnel", null);
        return "redirect:to_login";
    }

    @RequestMapping("/to_change_password")
    public String toChangePassword() {
        return "change_password";
    }

    @RequestMapping("/change_password")
    public String changePassword(HttpSession session, @RequestParam String old, @RequestParam String new1, @RequestParam String new2) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        if (presonnel.getPassword().equals(old)) {
            if (new1.equals(new2)) {
                presonnel.setPassword(new1);
                globalService.changPassword(presonnel);
                session.setAttribute("presonnel", null);
                return "redirect:to_login";
            }
        }
        return "redirect:to_change_password";
    }
    @RequestMapping("/authority")
    public String Authority(){
        return "redirect:authority";
    }
}
