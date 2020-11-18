package oes.biz.impl;

import oes.biz.ExaminationBiz;
import oes.dao.QuestionBankDao;
import oes.dao.TestPaperDao;
import oes.dao.TestQuestionDao;
import oes.entity.QuestionBank;
import oes.entity.TestPaper;
import oes.entity.TestQuestion;
import oes.entity.TestResult;
import oes.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Service("examinationBiz")
public class ExaminationBizImpl implements ExaminationBiz {
    @Autowired
    private QuestionBankDao questionBankDao;
    @Autowired
    private TestPaperDao testPaperDao;
    @Autowired
    private TestQuestionDao testQuestionDao;

    List<Integer> lists = new ArrayList();
    TestQuestion testQuestion = new TestQuestion();

    @Override
    public int Judge(int size) {
        Integer k = (int) (1 + Math.random() * (size - 1));
        if (lists.size() == 0) {
            lists.add(k);
            return k;
        } else {
            for (int i = 0; i < lists.size(); i++) {
                if (lists.get(i) == k) {
                    return 0;
                }
            }
            lists.add(k);
            return k;
        }
    }


    @Override
    public int generateOption(Integer TpId, Integer number, Integer num, int size) {
        Integer k = Judge(size);
        if (k != 0) {
            QuestionBank questionBank = questionBankDao.select(k);
            if (questionBank != null && questionBank.getQuestionType().equals(Contant.OPTION)) {
                testQuestion.setTpId(TpId);
                testQuestion.setLibId(questionBank.getId());
                testQuestion.setLibanwser(questionBank.getAnswer());
                testQuestion.setCreateId(number);
                testQuestion.setCreateDate(new Date());
                testQuestion.setStatus(Contant.CREATE);
                testQuestionDao.insert(testQuestion);
                TestQuestion testQuestion1 = testQuestionDao.selecTpId(testQuestion);
                return testQuestion1.getId();
            }
        }
        return generateOption(TpId, number, num, size);
    }


    @Override
    public int generateOptions(Integer TpId, Integer number, Integer num, int size) {
        Integer k = Judge(size);
        if (k != 0) {
            QuestionBank questionBank = questionBankDao.select(k);
            if (questionBank != null && questionBank.getQuestionType().equals(Contant.OPTIONS)) {
                testQuestion.setTpId(TpId);
                testQuestion.setLibId(questionBank.getId());
                testQuestion.setLibanwser(questionBank.getAnswer());
                testQuestion.setCreateId(number);
                testQuestion.setCreateDate(new Date());
                testQuestion.setStatus(Contant.CREATE);
                testQuestionDao.insert(testQuestion);
                TestQuestion testQuestion1 = testQuestionDao.selecTpId(testQuestion);
                return testQuestion1.getId();
            }
        }
        return generateOptions(TpId, number, num, size);
    }

    @Override
    public int generateSubjective(Integer TpId, Integer number, Integer num, int size) {
        Integer k = Judge(size);
        if (k != 0) {
            QuestionBank questionBank = questionBankDao.select(k);
            if (questionBank != null && questionBank.getQuestionType().equals(Contant.SUBJECTIVE)) {
                testQuestion.setTpId(TpId);
                testQuestion.setLibId(questionBank.getId());
                testQuestion.setLibanwser(questionBank.getAnswer());
                testQuestion.setCreateId(number);
                testQuestion.setCreateDate(new Date());
                testQuestion.setStatus(Contant.CREATE);
                testQuestionDao.insert(testQuestion);
                TestQuestion testQuestion1 = testQuestionDao.selecTpId(testQuestion);
                return testQuestion1.getId();
            }
        }
        return generateSubjective(TpId, number, num, size);
    }

    @Override
    public TestPaper generateTest(Integer number) {
        List<QuestionBank> listsize = questionBankDao.selectMax();
        int size = listsize.get(listsize.size() - 1).getId();
        TestPaper testPaper1 = new TestPaper();
        testPaper1.setCreateDate(new Date());
        testPaper1.setCreateId(number);
        testPaper1.setStatus(Contant.CREATE);
        testPaperDao.insert(testPaper1);
        TestPaper testPaper = testPaperDao.selectCid(number);
        int testpaperid = testPaper.getId();
        for (int i = 0; i < 23; i++) {
            System.out.println("i:" + i);
            switch (i) {
                case 0:
                    testPaper.setOption1(generateOption(testpaperid, number, i, size));
                    break;
                case 1:
                    testPaper.setOption2(generateOption(testpaperid, number, i, size));
                    break;
                case 2:
                    testPaper.setOption3(generateOption(testpaperid, number, i, size));
                    break;
                case 3:
                    testPaper.setOption4(generateOption(testpaperid, number, i, size));
                    break;
                case 4:
                    testPaper.setOption5(generateOption(testpaperid, number, i, size));
                    break;
                case 5:
                    testPaper.setOption6(generateOption(testpaperid, number, i, size));
                    break;
                case 6:
                    testPaper.setOption7(generateOption(testpaperid, number, i, size));
                    break;
                case 7:
                    testPaper.setOption8(generateOption(testpaperid, number, i, size));
                    break;
                case 8:
                    testPaper.setOption9(generateOption(testpaperid, number, i, size));
                    break;
                case 9:
                    testPaper.setOption10(generateOption(testpaperid, number, i, size));
                    break;
                case 10:
                    testPaper.setOption11(generateOption(testpaperid, number, i, size));
                    break;
                case 11:
                    testPaper.setOption12(generateOption(testpaperid, number, i, size));
                    break;
                case 12:
                    testPaper.setOption13(generateOption(testpaperid, number, i, size));
                    break;
                case 13:
                    testPaper.setOption14(generateOption(testpaperid, number, i, size));
                    break;
                case 14:
                    testPaper.setOption15(generateOption(testpaperid, number, i, size));
                    lists.clear();
                    break;
                case 15:
                    testPaper.setOptions1(generateOptions(testpaperid, number, i, size));
                    break;
                case 16:
                    testPaper.setOptions2(generateOptions(testpaperid, number, i, size));
                    break;
                case 17:
                    testPaper.setOptions3(generateOptions(testpaperid, number, i, size));
                    break;
                case 18:
                    testPaper.setOptions4(generateOptions(testpaperid, number, i, size));
                    break;
                case 19:
                    testPaper.setOptions5(generateOptions(testpaperid, number, i, size));
                    lists.clear();
                    break;
                case 20:
                    testPaper.setSubjective1(generateSubjective(testpaperid, number, i, size));
                    break;
                case 21:
                    testPaper.setSubjective2(generateSubjective(testpaperid, number, i, size));
                    break;
                case 22:
                    testPaper.setSubjective3(generateSubjective(testpaperid, number, i, size));
                    lists.clear();
                    break;
            }
        }
        testPaperDao.update(testPaper);
        return testPaper;
    }


    @Override
    public List<TestQuestion> getTest(TestPaper testPaper) {
        List<TestQuestion> testQuestionList = new ArrayList<TestQuestion>();
        testQuestionList.add(testQuestionDao.select(testPaper.getOption1()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption2()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption3()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption4()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption5()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption6()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption7()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption8()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption9()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption10()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption11()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption12()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption13()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption14()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOption15()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOptions1()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOptions2()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOptions3()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOptions4()));
        testQuestionList.add(testQuestionDao.select(testPaper.getOptions5()));
        testQuestionList.add(testQuestionDao.select(testPaper.getSubjective1()));
        testQuestionList.add(testQuestionDao.select(testPaper.getSubjective2()));
        testQuestionList.add(testQuestionDao.select(testPaper.getSubjective3()));
        return testQuestionList;
    }

    @Override
    public TestPaper selsectTest(Integer number) {
        return testPaperDao.selectCid(number);
    }

    @Override
    public TestPaper HandleExam(TestResult testResult) {
        Integer Grades=0;
        TestPaper testPaper = testPaperDao.select(testResult.getTpId());

        System.out.println(testPaper);


        TestQuestion testQuestion1 = testQuestionDao.select(testPaper.getOption1());
        testQuestion1.setUpdateDate(new Date());
        testQuestion1.setStatus(Contant.FINISH);
        testQuestion1.setUseranwser(testResult.getUseranwser0());
        if (testQuestion1.getLibanwser().equals(testResult.getUseranwser0())){
            Integer Grade=testQuestion1.getQuestionBank().getScore();
            testQuestion1.setGrade(Grade);
            testQuestionDao.update(testQuestion1);
            Grades=Grade+Grades;
        }else {
            testQuestion1.setGrade(0);
            testQuestionDao.update(testQuestion1);
        }


        TestQuestion testQuestion2 = testQuestionDao.select(testPaper.getOption2());
        testQuestion2.setUpdateDate(new Date());
        testQuestion2.setStatus(Contant.FINISH);
        testQuestion2.setUseranwser(testResult.getUseranwser1());
        if (testQuestion2.getLibanwser().equals(testResult.getUseranwser1())){
            Integer Grade=testQuestion2.getQuestionBank().getScore();
            testQuestion2.setGrade(Grade);
            testQuestionDao.update(testQuestion2);
            Grades=Grade+Grades;
        }else {
            testQuestion2.setGrade(0);
            testQuestionDao.update(testQuestion2);
        }


        TestQuestion testQuestion3 = testQuestionDao.select(testPaper.getOption3());
        testQuestion3.setUpdateDate(new Date());
        testQuestion3.setStatus(Contant.FINISH);
        testQuestion3.setUseranwser(testResult.getUseranwser2());
        if (testQuestion3.getLibanwser().equals(testResult.getUseranwser2())){
            Integer Grade=testQuestion3.getQuestionBank().getScore();
            testQuestion3.setGrade(Grade);
            testQuestionDao.update(testQuestion3);
            Grades=Grade+Grades;
        }else {
            testQuestion3.setGrade(0);
            testQuestionDao.update(testQuestion3);
        }


        TestQuestion testQuestion4 = testQuestionDao.select(testPaper.getOption4());
        testQuestion4.setUpdateDate(new Date());
        testQuestion4.setStatus(Contant.FINISH);
        testQuestion4.setUseranwser(testResult.getUseranwser3());
        if (testQuestion4.getLibanwser().equals(testResult.getUseranwser3())){
            Integer Grade=testQuestion4.getQuestionBank().getScore();
            testQuestion4.setGrade(Grade);
            testQuestionDao.update(testQuestion4);
            Grades=Grade+Grades;
        }else {
            testQuestion4.setGrade(0);
            testQuestionDao.update(testQuestion4);
        }


        TestQuestion testQuestion5 = testQuestionDao.select(testPaper.getOption5());
        testQuestion5.setUpdateDate(new Date());
        testQuestion5.setStatus(Contant.FINISH);
        testQuestion5.setUseranwser(testResult.getUseranwser4());
        if (testQuestion5.getLibanwser().equals(testResult.getUseranwser4())){
            Integer Grade=testQuestion5.getQuestionBank().getScore();
            testQuestion5.setGrade(Grade);
            testQuestionDao.update(testQuestion5);
            Grades=Grade+Grades;
        }else {
            testQuestion5.setGrade(0);
            testQuestionDao.update(testQuestion5);
        }


        TestQuestion testQuestion6 = testQuestionDao.select(testPaper.getOption6());
        testQuestion6.setUpdateDate(new Date());
        testQuestion6.setStatus(Contant.FINISH);
        testQuestion6.setUseranwser(testResult.getUseranwser5());
        if (testQuestion6.getLibanwser().equals(testResult.getUseranwser5())){
            Integer Grade=testQuestion6.getQuestionBank().getScore();
            testQuestion6.setGrade(Grade);
            testQuestionDao.update(testQuestion6);
            Grades=Grade+Grades;
        }else {
            testQuestion6.setGrade(0);
            testQuestionDao.update(testQuestion6);
        }


        TestQuestion testQuestion7 = testQuestionDao.select(testPaper.getOption7());
        testQuestion7.setUpdateDate(new Date());
        testQuestion7.setStatus(Contant.FINISH);
        testQuestion7.setUseranwser(testResult.getUseranwser6());
        if (testQuestion7.getLibanwser().equals(testResult.getUseranwser6())){
            Integer Grade=testQuestion7.getQuestionBank().getScore();
            testQuestion7.setGrade(Grade);
            testQuestionDao.update(testQuestion7);
            Grades=Grade+Grades;
        }else {
            testQuestion7.setGrade(0);
            testQuestionDao.update(testQuestion7);
        }


        TestQuestion testQuestion8 = testQuestionDao.select(testPaper.getOption8());
        testQuestion8.setUpdateDate(new Date());
        testQuestion8.setStatus(Contant.FINISH);
        testQuestion8.setUseranwser(testResult.getUseranwser7());
        if (testQuestion8.getLibanwser().equals(testResult.getUseranwser7())){
            Integer Grade=testQuestion8.getQuestionBank().getScore();
            testQuestion8.setGrade(Grade);
            testQuestionDao.update(testQuestion8);
            Grades=Grade+Grades;
        }else {
            testQuestion8.setGrade(0);
            testQuestionDao.update(testQuestion8);
        }


        TestQuestion testQuestion9 = testQuestionDao.select(testPaper.getOption9());
        testQuestion9.setUpdateDate(new Date());
        testQuestion9.setStatus(Contant.FINISH);
        testQuestion9.setUseranwser(testResult.getUseranwser8());
        if (testQuestion9.getLibanwser().equals(testResult.getUseranwser8())){
            Integer Grade=testQuestion9.getQuestionBank().getScore();
            testQuestion9.setGrade(Grade);
            testQuestionDao.update(testQuestion9);
            Grades=Grade+Grades;
        }else {
            testQuestion9.setGrade(0);
            testQuestionDao.update(testQuestion9);
        }


        TestQuestion testQuestion10 = testQuestionDao.select(testPaper.getOption10());
        testQuestion10.setUpdateDate(new Date());
        testQuestion10.setStatus(Contant.FINISH);
        testQuestion10.setUseranwser(testResult.getUseranwser9());
        if (testQuestion10.getLibanwser().equals(testResult.getUseranwser9())){
            Integer Grade=testQuestion10.getQuestionBank().getScore();
            testQuestion10.setGrade(Grade);
            testQuestionDao.update(testQuestion10);
            Grades=Grade+Grades;
        }else {
            testQuestion10.setGrade(0);
            testQuestionDao.update(testQuestion10);
        }


        TestQuestion testQuestion11 = testQuestionDao.select(testPaper.getOption11());
        testQuestion11.setUpdateDate(new Date());
        testQuestion11.setStatus(Contant.FINISH);
        testQuestion11.setUseranwser(testResult.getUseranwser10());
        if (testQuestion11.getLibanwser().equals(testResult.getUseranwser10())){
            Integer Grade=testQuestion11.getQuestionBank().getScore();
            testQuestion11.setGrade(Grade);
            testQuestionDao.update(testQuestion11);
            Grades=Grade+Grades;
        }else {
            testQuestion11.setGrade(0);
            testQuestionDao.update(testQuestion11);
        }


        TestQuestion testQuestion12 = testQuestionDao.select(testPaper.getOption12());
        testQuestion12.setUpdateDate(new Date());
        testQuestion12.setStatus(Contant.FINISH);
        testQuestion12.setUseranwser(testResult.getUseranwser11());
        if (testQuestion12.getLibanwser().equals(testResult.getUseranwser11())){
            Integer Grade=testQuestion12.getQuestionBank().getScore();
            testQuestion12.setGrade(Grade);
            testQuestionDao.update(testQuestion12);
            Grades=Grade+Grades;
        }else {
            testQuestion12.setGrade(0);
            testQuestionDao.update(testQuestion12);
        }


        TestQuestion testQuestion13 = testQuestionDao.select(testPaper.getOption13());
        testQuestion13.setUpdateDate(new Date());
        testQuestion13.setStatus(Contant.FINISH);
        testQuestion13.setUseranwser(testResult.getUseranwser12());
        if (testQuestion13.getLibanwser().equals(testResult.getUseranwser12())){
            Integer Grade=testQuestion13.getQuestionBank().getScore();
            testQuestion13.setGrade(Grade);
            testQuestionDao.update(testQuestion13);
            Grades=Grade+Grades;
        }else {
            testQuestion13.setGrade(0);
            testQuestionDao.update(testQuestion13);
        }


        TestQuestion testQuestion14 = testQuestionDao.select(testPaper.getOption14());
        testQuestion14.setUpdateDate(new Date());
        testQuestion14.setStatus(Contant.FINISH);
        testQuestion14.setUseranwser(testResult.getUseranwser13());
        if (testQuestion14.getLibanwser().equals(testResult.getUseranwser13())){
            Integer Grade=testQuestion14.getQuestionBank().getScore();
            testQuestion14.setGrade(Grade);
            testQuestionDao.update(testQuestion14);
            Grades=Grade+Grades;
        }else {
            testQuestion14.setGrade(0);
            testQuestionDao.update(testQuestion14);
        }


        TestQuestion testQuestion15 = testQuestionDao.select(testPaper.getOption15());
        testQuestion15.setUpdateDate(new Date());
        testQuestion15.setStatus(Contant.FINISH);
        testQuestion15.setUseranwser(testResult.getUseranwser14());
        if (testQuestion15.getLibanwser().equals(testResult.getUseranwser14())){
            Integer Grade=testQuestion15.getQuestionBank().getScore();
            testQuestion15.setGrade(Grade);
            testQuestionDao.update(testQuestion15);
            Grades=Grade+Grades;
        }else {
            testQuestion15.setGrade(0);
            testQuestionDao.update(testQuestion15);
        }


        TestQuestion testQuestion16 = testQuestionDao.select(testPaper.getOptions1());
        testQuestion16.setUpdateDate(new Date());
        testQuestion16.setStatus(Contant.FINISH);
        String options16 = "";
        for (String list:testResult.getUseranwser16()){
            options16=options16+list;
        }
        testQuestion16.setUseranwser(options16);
        if (testQuestion16.getLibanwser().equals(options16)){
            Integer Grade=testQuestion16.getQuestionBank().getScore();
            testQuestion16.setGrade(Grade);
            testQuestionDao.update(testQuestion16);
            Grades=Grade+Grades;
        }else {
            testQuestion16.setGrade(0);
            testQuestionDao.update(testQuestion16);
        }


        TestQuestion testQuestion17 = testQuestionDao.select(testPaper.getOptions2());
        testQuestion17.setUpdateDate(new Date());
        testQuestion17.setStatus(Contant.FINISH);
        String options17 = "";
        for (String list:testResult.getUseranwser16()){
            options17=options17+list;
        }
        testQuestion17.setUseranwser(options17);
        if (testQuestion17.getLibanwser().equals(options17)){
            Integer Grade=testQuestion17.getQuestionBank().getScore();
            testQuestion17.setGrade(Grade);
            testQuestionDao.update(testQuestion17);
            Grades=Grade+Grades;
        }else {
            testQuestion17.setGrade(0);
            testQuestionDao.update(testQuestion17);
        }


        TestQuestion testQuestion18 = testQuestionDao.select(testPaper.getOptions3());
        testQuestion18.setUpdateDate(new Date());
        testQuestion18.setStatus(Contant.FINISH);
        String options18 = "";
        for (String list:testResult.getUseranwser16()){
            options18=options18+list;
        }
        testQuestion18.setUseranwser(options18);
        if (testQuestion18.getLibanwser().equals(options18)){
            Integer Grade=testQuestion18.getQuestionBank().getScore();
            testQuestion18.setGrade(Grade);
            testQuestionDao.update(testQuestion18);
            Grades=Grade+Grades;
        }else {
            testQuestion18.setGrade(0);
            testQuestionDao.update(testQuestion18);
        }


        TestQuestion testQuestion19 = testQuestionDao.select(testPaper.getOptions4());
        testQuestion19.setUpdateDate(new Date());
        testQuestion19.setStatus(Contant.FINISH);
        String options19 = "";
        for (String list:testResult.getUseranwser16()){
            options19=options19+list;
        }
        testQuestion19.setUseranwser(options19);
        if (testQuestion19.getLibanwser().equals(options19)){
            Integer Grade=testQuestion19.getQuestionBank().getScore();
            testQuestion19.setGrade(Grade);
            testQuestionDao.update(testQuestion19);
            Grades=Grade+Grades;
        }else {
            testQuestion19.setGrade(0);
            testQuestionDao.update(testQuestion19);
        }


        TestQuestion testQuestion20 = testQuestionDao.select(testPaper.getOptions5());
        testQuestion20.setUpdateDate(new Date());
        testQuestion20.setStatus(Contant.FINISH);
        String options20 = "";
        for (String list:testResult.getUseranwser16()){
            options20=options20+list;
        }
        testQuestion20.setUseranwser(options20);
        if (testQuestion20.getLibanwser().equals(options20)){
            Integer Grade=testQuestion20.getQuestionBank().getScore();
            testQuestion20.setGrade(Grade);
            testQuestionDao.update(testQuestion20);
            Grades=Grade+Grades;
        }else {
            testQuestion20.setGrade(0);
            testQuestionDao.update(testQuestion20);
        }


        TestQuestion testQuestion21 = testQuestionDao.select(testPaper.getSubjective1());
        testQuestion21.setUseranwser(testResult.getUseranwser20());
        testQuestion21.setStatus(Contant.FINISH);
        testQuestionDao.update(testQuestion21);


        TestQuestion testQuestion22 = testQuestionDao.select(testPaper.getSubjective2());
        testQuestion22.setUseranwser(testResult.getUseranwser21());
        testQuestion22.setStatus(Contant.FINISH);
        testQuestionDao.update(testQuestion22);


        TestQuestion testQuestion23 = testQuestionDao.select(testPaper.getSubjective3());
        testQuestion23.setUseranwser(testResult.getUseranwser22());
        testQuestion23.setStatus(Contant.FINISH);
        testQuestionDao.update(testQuestion23);

        testPaper.setTotalScore(Grades);
        testPaper.setStatus(Contant.FINISH);
        testPaperDao.update(testPaper);




        return testPaper;
    }

}
