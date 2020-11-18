package fun.afterglow.oes.service;

import fun.afterglow.oes.entity.TestPaper;
import fun.afterglow.oes.entity.TestQuestion;
import fun.afterglow.oes.entity.TestResult;

import java.util.List;

public interface ExaminationService {
    int generateOption(Integer TpId, Integer number, Integer num, int size);

    int generateOptions(Integer TpId, Integer number, Integer num, int size);

    int generateSubjective(Integer TpId, Integer number, Integer num, int size);


    TestPaper generateTest(Integer number);

    int Judge(int size);

    List<TestQuestion> getTest(TestPaper testPaper);

    TestPaper selsectTest(Integer number);

    TestPaper HandleExam(TestResult testResult);

}
