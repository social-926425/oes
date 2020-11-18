package oes.controller;

import oes.biz.MarkBiz;
import oes.dto.Grade;
import oes.entity.Presonnel;
import oes.entity.TestPaper;
import oes.entity.TestQuestion;
import oes.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller("markController")
@RequestMapping("/mark")
public class MarkController {

    @Autowired
    private MarkBiz markBiz;

    @RequestMapping("/list")
    public String List(Map<String, Object> map, HttpSession session) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        if (presonnel.getRoles().equals(Contant.ROLES_TEACHER)) {
            map.put("sublist", markBiz.getDealAll());
            return "mark_list";
        }
        return "authority";

    }

    @RequestMapping("/to_deal")
    public String toDeal(int id, Map<String, Object> map, HttpSession session) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        if (presonnel.getRoles().equals(Contant.ROLES_TEACHER)) {
            TestPaper testPaper = markBiz.getPager(id);
            map.put("creatpager", testPaper);
            map.put("examlist", markBiz.get(testPaper));
            return "mark_deal";
        }
        return "authority";
    }

    @RequestMapping("/deal")
    public String Deal(Grade grade, HttpSession session) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        if (presonnel.getRoles().equals(Contant.ROLES_TEACHER)) {
            TestPaper testPaper = markBiz.getPager(grade.getPregerid());
            List<TestQuestion> list = markBiz.get(testPaper);
            list.get(0).setGrade(grade.getGrade1());
            list.get(0).setStatus(Contant.REVIEW);
            list.get(1).setGrade(grade.getGrade2());
            list.get(1).setStatus(Contant.REVIEW);
            list.get(2).setGrade(grade.getGrade3());
            list.get(2).setStatus(Contant.REVIEW);
            int tatal = testPaper.getTotalScore();
            tatal = tatal + grade.getGrade1() + grade.getGrade2() + grade.getGrade3();
            testPaper.setTotalScore(tatal);
            testPaper.setStatus(Contant.REVIEW);
            markBiz.edit(list, testPaper);
            return "redirect:list";
        }
        return "authority";
    }

    @RequestMapping("/test_list")
    public String TestList(Map<String, Object> map) {
        map.put("sublist", markBiz.getResultAll());
        return "mark_back";
    }
}
