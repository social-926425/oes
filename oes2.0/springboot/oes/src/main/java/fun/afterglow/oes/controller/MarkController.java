package fun.afterglow.oes.controller;

import fun.afterglow.oes.dto.Grade;
import fun.afterglow.oes.entity.Presonnel;
import fun.afterglow.oes.entity.TestPaper;
import fun.afterglow.oes.entity.TestQuestion;
import fun.afterglow.oes.global.Contant;
import fun.afterglow.oes.service.MarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller("markController")
@RequestMapping("/mark")
public class MarkController {

    @Autowired
    private MarkService markService;

    @RequestMapping("/list")
    public String List(Map<String, Object> map, HttpSession session) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        map.put("sublist", markService.getDealAll());
        return "mark_list";
    }

    @RequestMapping("/to_deal")
    public String toDeal(int id, Map<String, Object> map, HttpSession session) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        TestPaper testPaper = markService.getPager(id);
        map.put("creatpager", testPaper);
        map.put("examlist", markService.get(testPaper));
        return "mark_deal";
    }

    @RequestMapping("/deal")
    public String Deal(Grade grade, HttpSession session) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        TestPaper testPaper = markService.getPager(grade.getPregerid());
        List<TestQuestion> list = markService.get(testPaper);
        list.get(0).setGrade(grade.getGrade1());
        list.get(0).setStatus(Contant.REVIEW);
        list.get(0).setUpdateDate(new Date());
        list.get(1).setGrade(grade.getGrade2());
        list.get(1).setStatus(Contant.REVIEW);
        list.get(1).setUpdateDate(new Date());
        list.get(2).setGrade(grade.getGrade3());
        list.get(2).setStatus(Contant.REVIEW);
        list.get(2).setUpdateDate(new Date());
        int tatal = testPaper.getTotalScore();
        tatal = tatal + grade.getGrade1() + grade.getGrade2() + grade.getGrade3();
        testPaper.setTotalScore(tatal);
        testPaper.setStatus(Contant.REVIEW);
        testPaper.setUpdateDate(new Date());
        testPaper.setUpdateId(presonnel.getNumber());
        markService.edit(list, testPaper);
        return "redirect:list";
    }


    @RequestMapping("/test_list")
    public String TestList(Map<String, Object> map) {
        map.put("sublist", markService.getResultAll());
        return "mark_back";
    }
    @RequestMapping("/result")
    public String result(Map<String, Object> map, HttpSession session) {
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        map.put("sublist", markService.getResultAll());
        return "mark_list";
    }
}
