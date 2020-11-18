package fun.afterglow.oes.service;

import fun.afterglow.oes.entity.TestPaper;

import java.util.List;

public interface MyExamService {
    public TestPaper get(Integer id);

    public List<TestPaper> getCreateAll(Integer createId);
}
