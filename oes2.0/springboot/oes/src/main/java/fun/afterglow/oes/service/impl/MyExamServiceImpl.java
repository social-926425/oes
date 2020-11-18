package fun.afterglow.oes.service.impl;

import fun.afterglow.oes.service.MyExamService;
import fun.afterglow.oes.dao.TestPaperDao;
import fun.afterglow.oes.entity.TestPaper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("myExamBiz")
public class MyExamServiceImpl implements MyExamService {

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
