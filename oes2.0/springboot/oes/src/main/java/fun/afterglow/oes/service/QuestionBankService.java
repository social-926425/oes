package fun.afterglow.oes.service;

import java.util.List;

import fun.afterglow.oes.entity.QuestionBank;

public interface QuestionBankService {
    void add(QuestionBank var1);

    void edit(QuestionBank var1);

    void remove(Integer var1);

    QuestionBank get(Integer var1);

    List<QuestionBank> getAll();

    List<QuestionBank> getMax();
}