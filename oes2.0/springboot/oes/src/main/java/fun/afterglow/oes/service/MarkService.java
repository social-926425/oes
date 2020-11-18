package fun.afterglow.oes.service;

import fun.afterglow.oes.entity.TestPaper;
import fun.afterglow.oes.entity.TestQuestion;

import java.util.List;

public interface MarkService {
    List<TestQuestion> get(TestPaper testPaper);

    List<TestPaper> getDealAll();

    List<TestPaper> getResultAll();

    TestPaper getPager(Integer id);

    void edit(List<TestQuestion> questionList,TestPaper testPaper);
}
