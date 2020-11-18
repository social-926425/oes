package oes.controller;

import oes.biz.ExaminationBiz;
import oes.biz.MyExamBiz;
import oes.entity.Presonnel;
import oes.entity.TestPaper;
import oes.entity.TestQuestion;
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
    private MyExamBiz myExamBiz;
    @Autowired
    private ExaminationBiz examinationBiz;

    @RequestMapping("/list")
    public String List(HttpSession session ,Map<String, Object> map){
        Presonnel presonnel = (Presonnel) session.getAttribute("presonnel");
        map.put("examlist",myExamBiz.getCreateAll(presonnel.getNumber()));
        return "my_exam_list";
    }

    @RequestMapping("/detail")
    public String toDetail(int id,Map<String,Object> map){
        TestPaper testPaper = myExamBiz.get(id);
        List<TestQuestion> testQuestionList = examinationBiz.getTest(testPaper);
        map.put("testQuestionList",testQuestionList);
        map.put("testPaper",testPaper);
        return "my_exam_detail";
    }


}
