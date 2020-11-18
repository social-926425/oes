package fun.afterglow.oes.controller;

import fun.afterglow.oes.service.ExaminationService;
import fun.afterglow.oes.entity.TestResult;
import fun.afterglow.oes.entity.Presonnel;
import fun.afterglow.oes.entity.TestPaper;
import fun.afterglow.oes.entity.TestQuestion;
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
    private ExaminationService examinationService;


    @RequestMapping("/to_test")
    public String test (HttpSession session, Map<String, Object> map){
        Presonnel presonnel = (Presonnel)session.getAttribute("presonnel");
//        System.out.println(presonnel.getNumber());
        TestPaper testPaper=examinationService.selsectTest(presonnel.getNumber());
        if (testPaper==null){
            testPaper=examinationService.generateTest(presonnel.getNumber());
        }
        List<TestQuestion> testQuestionList = examinationService.getTest(testPaper);
        map.put("testQuestionList",testQuestionList);
        map.put("testPaper",testPaper);
        return "exam_test";
    }
    @RequestMapping("/test")
    public String Test(TestResult testResult){
        TestPaper testPaper = examinationService.HandleExam(testResult);
        return "redirect:../my_exam/list";
    }

}
