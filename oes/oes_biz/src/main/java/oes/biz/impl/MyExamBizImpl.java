package oes.biz.impl;

import oes.biz.MyExamBiz;
import oes.dao.TestPaperDao;
import oes.entity.TestPaper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("myExamBiz")
public class MyExamBizImpl implements MyExamBiz {

    @Autowired
    private TestPaperDao testPaperDao;
    @Override
    public TestPaper get(Integer id) {
        return testPaperDao.select(id);
    }

    @Override
    public List<TestPaper> getCreateAll(Integer createId) {
        return testPaperDao.selectByCreate(createId);
    }
}
