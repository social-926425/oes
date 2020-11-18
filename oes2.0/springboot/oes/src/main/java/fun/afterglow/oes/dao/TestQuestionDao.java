package fun.afterglow.oes.dao;

import fun.afterglow.oes.entity.TestQuestion;
import org.springframework.stereotype.Repository;

@Repository("testQuestionDao")
public interface TestQuestionDao {
    void insert(TestQuestion testQuestion);

    void update(TestQuestion testQuestion);

    TestQuestion select(Integer id);

    TestQuestion selecTpId(TestQuestion testQuestion);


}
