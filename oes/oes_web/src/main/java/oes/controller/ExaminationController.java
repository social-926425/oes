package oes.controller;

import oes.biz.ExaminationBiz;
import oes.entity.TestResult;
import oes.entity.Presonnel;
import oes.entity.TestPaper;
import oes.entity.TestQuestion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller("examinationController")
@RequestMapping("/exam")
public class ExaminationController {
    @Autowired
    private ExaminationBiz examinationBiz;


    @RequestMapping("/to_test")
    public String test (HttpSession session, Map<String, Object> map){
        Presonnel presonnel = (Presonnel)session.getAttribute("presonnel");
        System.out.println(presonnel.getNumber());
        TestPaper testPaper=examinationBiz.selsectTest(presonnel.getNumber());
        if (testPaper==null){
            testPaper=examinationBiz.generateTest(presonnel.getNumber());
        }
        List<TestQuestion> testQuestionList = examinationBiz.getTest(testPaper);
        map.put("testQuestionList",testQuestionList);
        map.put("testPaper",testPaper);
        return "exam_test";
    }
    @RequestMapping("/test")
    public String Test(TestResult testResult){
        TestPaper testPaper = examinationBiz.HandleExam(testResult);
        System.out.println(testPaper.getTotalScore());
        return "exam_result";
    }

}
