package oes.biz;

import java.util.List;

import oes.entity.QuestionBank;

public interface QuestionBankBiz {
    void add(QuestionBank var1);

    void edit(QuestionBank var1);

    void remove(Integer var1);

    QuestionBank get(Integer var1);

    List<QuestionBank> getAll();

    List<QuestionBank> getMax();
}