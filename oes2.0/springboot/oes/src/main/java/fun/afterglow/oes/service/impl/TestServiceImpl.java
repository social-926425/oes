package fun.afterglow.oes.service.impl;

import fun.afterglow.oes.service.TestService;
import fun.afterglow.oes.dao.TestPaperDao;
import fun.afterglow.oes.dao.TestQuestionDao;
import fun.afterglow.oes.entity.TestPaper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("testBiz")
public class TestServiceImpl implements TestService {
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
