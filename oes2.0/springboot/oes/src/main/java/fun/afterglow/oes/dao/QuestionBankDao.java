

package fun.afterglow.oes.dao;

import fun.afterglow.oes.entity.QuestionBank;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("questionBankDao")
public interface QuestionBankDao {
    void insert(QuestionBank questionBank);

    void update(QuestionBank questionBank);

    void delete(int questionBank);

    QuestionBank select(int questionBank);

    List<QuestionBank> selectAll();

    List<QuestionBank> selectMax();

}
