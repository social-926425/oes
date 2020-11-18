//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package oes.dao;

import oes.entity.QuestionBank;
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
