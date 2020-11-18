package oes.dao;

import oes.entity.Dictionary;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("dictionaryDao")
public interface DictionaryDao {

    /**
     * 添加字典
     * @param dictionary
     * @return 影响行数
     */
    int insertDictionary(Dictionary dictionary);

    /**
     * 通过父Id查询
     * @param pId
     * @return
     */
    Dictionary selectBypId(int pId);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    Dictionary selectById(int id);

    /**
     * 通过pId查询所有子类
     * @param pId
     * @return
     */
    List<Dictionary> queryDictionary(int pId);

    /**
     * 修改Dictionary
     * @param dictionary
     * @return
     */
    int editDictionary(Dictionary dictionary);

    int deleteDictionary(int id);
}
