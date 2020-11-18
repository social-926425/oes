package oes.biz;

import oes.entity.TestPaper;

import java.util.List;

public interface TestBiz {
    void testpager();
    List<TestPaper> gettestpager(Integer createId);
}
