package oes.biz;

import oes.entity.TestPaper;
import oes.entity.TestQuestion;
import oes.entity.TestResult;

import java.util.List;

public interface ExaminationBiz {
    int generateOption(Integer TpId, Integer number, Integer num, int size);

    int generateOptions(Integer TpId, Integer number, Integer num, int size);

    int generateSubjective(Integer TpId, Integer number, Integer num, int size);


    TestPaper generateTest(Integer number);

    int Judge(int size);

    List<TestQuestion> getTest(TestPaper testPaper);

    TestPaper selsectTest(Integer number);

    TestPaper HandleExam(TestResult testResult);

}
