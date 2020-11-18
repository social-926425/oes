package fun.afterglow.oes.service;

import fun.afterglow.oes.entity.TestPaper;

import java.util.List;

public interface TestService {
    void testpager();
    List<TestPaper> gettestpager(Integer createId);
}
