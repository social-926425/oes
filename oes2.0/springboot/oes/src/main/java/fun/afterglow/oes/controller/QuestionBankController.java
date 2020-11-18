

package fun.afterglow.oes.controller;

import java.util.List;
import java.util.Map;

import fun.afterglow.oes.entity.QuestionBank;
import fun.afterglow.oes.global.Contant;
import fun.afterglow.oes.service.QuestionBankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("questionBankController")
@RequestMapping({"/bank"})
public class QuestionBankController {
    @Autowired
    private QuestionBankService questionBankBiz;

    public QuestionBankController() {
    }

    @RequestMapping({"/list"})
    public String List(Map<String, Object> map) {
        map.put("list", this.questionBankBiz.getAll());
        return "bank_list";
    }

    @RequestMapping({"/to_option_add"})
    public String toAdd(Map<String, Object> map) {
        map.put("questionBank", new QuestionBank());
        map.put("option", Contant.getOption());
        return "option_add";
    }

    @RequestMapping({"/option_add"})
    public String Add(QuestionBank questionBank) {
        this.questionBankBiz.add(questionBank);
        return "redirect:list";
    }

    @RequestMapping(
            value = {"/to_option_update"},
            params = {"id"}
    )
    public String toOptionUpdate(int id, Map<String, Object> map) {
        map.put("questionBank", this.questionBankBiz.get(id));
        map.put("option", Contant.getOption());
        return "option_update";
    }

    @RequestMapping({"/option_update"})
    public String OptionUpdate(QuestionBank questionBank) {
        this.questionBankBiz.edit(questionBank);
        return "redirect:list";
    }

    @RequestMapping({"/to_sub_add"})
    public String toSubAdd(Map<String, Object> map) {
        map.put("questionBank", new QuestionBank());
        return "sub_add";
    }

    @RequestMapping({"/sub_add"})
    public String SubAdd(QuestionBank questionBank) {
        questionBank.setQuestionType("主观题");
        this.questionBankBiz.add(questionBank);
        return "redirect:to_sub_add";
    }

    @RequestMapping(
            value = {"/to_sub_update"},
            params = {"id"}
    )
    public String toSubUpdate(int id, Map<String, Object> map) {
        map.put("questionBank", questionBankBiz.get(id));
        return "sub_update";
    }

    @RequestMapping({"/sub_update"})
    public String SubUpdate(QuestionBank questionBank) {
        questionBank.setQuestionType("主观题");
        this.questionBankBiz.edit(questionBank);
        return "redirect:to_sub_update";
    }

    @RequestMapping(
            value = {"/to_detail"},
            params = {"id"}
    )
    public String toDetails(int id, Map<String, Object> map) {
        map.put("questionBank", this.questionBankBiz.get(id));
        return "bank_detail";
    }

    @RequestMapping(
            value = {"/remove"},
            params = {"id"}
    )
    public String toDelete(int id) {
        this.questionBankBiz.remove(id);
        return "redirect:list";
    }

    @RequestMapping("/test")
    public void test() {
        List list = questionBankBiz.getMax();
        System.out.println(list.size());
    }
}
