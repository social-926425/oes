package oes.biz;

import oes.entity.TestPaper;
import oes.entity.TestQuestion;

import java.util.List;

public interface MarkBiz {
    List<TestQuestion> get(TestPaper testPaper);

    List<TestPaper> getDealAll();

    List<TestPaper> getResultAll();

    TestPaper getPager(Integer id);

    void edit(List<TestQuestion> questionList,TestPaper testPaper);
}
