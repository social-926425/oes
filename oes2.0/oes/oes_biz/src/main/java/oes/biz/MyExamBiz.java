package oes.biz;

import oes.entity.TestPaper;

import java.util.List;

public interface MyExamBiz {
    public TestPaper get(Integer id);

    public List<TestPaper> getCreateAll(Integer createId);
}
