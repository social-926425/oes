package fun.afterglow.oes.controller;

import fun.afterglow.oes.entity.Presonnel;
import fun.afterglow.oes.entity.TestPaper;
import fun.afterglow.oes.entity.TestQuestion;
import fun.afterglow.oes.service.ExaminationService;
import fun.afterglow.oes.service.MyExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller("myExamController")
@RequestMapping("/my_exam")
public class MyExamController {
    @Autowired
    private MyExamService myExamService;
    @Autowired
    private ExaminationService examinationService;

    @RequestMapping("/list")
    public String List(HttpSession session ,Map<String, Object> map){
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        map.put("examlist",myExamService.getCreateAll(presonnel.getNumber()));
        return "my_exam_list";
    }

    @RequestMapping("/detail")
    public String toDetail(int id,Map<String,Object> map){
        TestPaper testPaper = myExamService.get(id);
        List<TestQuestion> testQuestionList = examinationService.getTest(testPaper);
        map.put("testQuestionList",testQuestionList);
        map.put("testPaper",testPaper);
        return "my_exam_detail";
    }


}
