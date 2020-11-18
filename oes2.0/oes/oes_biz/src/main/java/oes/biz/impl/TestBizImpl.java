package oes.biz.impl;

import oes.biz.TestBiz;
import oes.dao.TestPaperDao;
import oes.dao.TestQuestionDao;
import oes.entity.TestPaper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("testBiz")
public class TestBizImpl implements TestBiz {
    @Autowired
    private TestPaperDao testPaperDao;
    @Autowired
    private TestQuestionDao testQuestionDao;
    @Override
    public void testpager() {
        TestPaper testPaper = new TestPaper();
        testPaper.setCreateDate(new Date());
    }

    @Override
    public List<TestPaper> gettestpager(Integer createId) {

        return null;
    }
}
