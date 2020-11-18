package oes.biz.impl;

import oes.biz.MarkBiz;
import oes.dao.TestPaperDao;
import oes.dao.TestQuestionDao;
import oes.entity.TestPaper;
import oes.entity.TestQuestion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("reviewBiz")
public class MarkBizImpl implements MarkBiz {
    @Autowired
    private TestPaperDao testPaperDao;
    @Autowired
    private TestQuestionDao testQuestionDao;

    @Override
    public List<TestQuestion> get(TestPaper testPaper) {
        List<TestQuestion> testQuestionList = new ArrayList<TestQuestion>();
        testQuestionList.add(testQuestionDao.select(testPaper.getSubjective1()));
        testQuestionList.add(testQuestionDao.select(testPaper.getSubjective2()));
        testQuestionList.add(testQuestionDao.select(testPaper.getSubjective3()));
        return testQuestionList;
    }

    @Override
    public List<TestPaper> getDealAll() {
        return testPaperDao.selectByDeal();
    }

    @Override
    public List<TestPaper> getResultAll() {
        return testPaperDao.selectByResult();
    }

    @Override
    public TestPaper getPager(Integer id) {
        return testPaperDao.select(id);
    }

    @Override
    public void edit(List<TestQuestion> questionList, TestPaper testPaper) {
        testQuestionDao.update(questionList.get(0));
        testQuestionDao.update(questionList.get(1));
        testQuestionDao.update(questionList.get(2));
        testPaperDao.update(testPaper);

    }
}
