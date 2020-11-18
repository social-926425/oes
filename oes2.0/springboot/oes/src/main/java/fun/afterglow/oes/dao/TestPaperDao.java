package fun.afterglow.oes.dao;

import fun.afterglow.oes.entity.TestPaper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("testPaperDao")
public interface TestPaperDao {
    void insert(TestPaper testPaper);

    void update(TestPaper testPaper);

    TestPaper select(Integer id);

    TestPaper selectCid(Integer createId);

    List<TestPaper> selectByCreate(Integer createId);

    List<TestPaper> selectByDeal();
    List<TestPaper> selectByResult();
}
