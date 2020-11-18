

package oes.controller;

import java.util.Map;
import oes.biz.PresonnelBiz;
import oes.entity.Presonnel;
import oes.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("presonnelController")
@RequestMapping({"/presonnel"})
public class PresonnelController {
    @Autowired
    private PresonnelBiz presonnelBiz;

    @RequestMapping({"/list"})
    public String List(Map<String, Object> map) {
        map.put("list", this.presonnelBiz.getAll());
        return "presonnel_list";
    }

    @RequestMapping({"/to_add"})
    public String toAdd(Map<String, Object> map) {
        map.put("presonnel", new Presonnel());
        map.put("plist", Contant.getRoles());
        return "presonnel_add";
    }

    @RequestMapping({"/add"})
    public String Add(Presonnel presonnel) {
        this.presonnelBiz.add(presonnel);
        return "redirect:list";
    }

    @RequestMapping(
            value = {"/to_update"},
            params = {"studentId"}
    )
    public String toUpdate(int studentId, Map<String, Object> map) {
        System.out.println(studentId);
        map.put("presonnel", this.presonnelBiz.get(studentId));
        map.put("plist", Contant.getRoles());
        return "presonnel_update";
    }

    @RequestMapping({"/update"})
    public String Update(Presonnel presonnel) {
        this.presonnelBiz.edit(presonnel);
        return "redirect:list";
    }

    @RequestMapping(
            value = {"/remove"},
            params = {"studentId"}
    )
    public String remove(int studentId) {
        System.out.println(studentId);
        this.presonnelBiz.remove(studentId);
        return "edilist";
    }
}
