
package fun.afterglow.oes.service.impl;

import java.util.List;

import fun.afterglow.oes.service.QuestionBankService;
import fun.afterglow.oes.dao.QuestionBankDao;
import fun.afterglow.oes.entity.QuestionBank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("questionBankBiz")
public class QuestionBankServiceImpl implements QuestionBankService {
    @Autowired
    private QuestionBankDao questionBankDao;

    public QuestionBankServiceImpl() {
    }

    public void add(QuestionBank questionBank) {
        if (questionBank.getQuestionType().equals("单选题")) {
            questionBank.setScore(3);
        } else if (questionBank.getQuestionType().equals("多选题")) {
            questionBank.setScore(5);
        } else if (questionBank.getQuestionType().equals("主观题")) {
            questionBank.setScore(10);
        }
        System.out.println(questionBank);
        this.questionBankDao.insert(questionBank);
    }

    public void edit(QuestionBank questionBank) {
        if (questionBank.getQuestionType().equals("单选题")) {
            questionBank.setScore(3);
        } else if (questionBank.getQuestionType().equals("多选题")) {
            questionBank.setScore(5);
        } else if (questionBank.getQuestionType().equals("主观题")) {
            questionBank.setScore(10);
        }

        System.out.println(questionBank.getId());
        System.out.println("=========================");
        System.out.println(questionBank.getScore());
        System.out.println(questionBank.getQuestionType());
        this.questionBankDao.update(questionBank);
    }

    public void remove(Integer id) {
        this.questionBankDao.delete(id);
    }

    public QuestionBank get(Integer id) {
        return this.questionBankDao.select(id);
    }

    public List<QuestionBank> getAll() {
        return this.questionBankDao.selectAll();
    }

    public List<QuestionBank> getMax() {
        List<QuestionBank> list = questionBankDao.selectMax();
        System.out.println(list.size());
        System.out.println(list.get(0));
        return questionBankDao.selectMax();
    }
}
