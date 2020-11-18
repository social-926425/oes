package fun.afterglow.oes.service;

import fun.afterglow.oes.entity.Dictionary;

import java.util.List;

public interface DictionaryService {
    /**
     * 添加一个字典
     * @param dictionary
     * @return
     */
    int addDictionary(Dictionary dictionary);

    /**
     * 通过父id查询
     * @param pId
     * @return
     */
    Dictionary getDictionaryBypId(int pId);

    /**
     * 根据id获取Dictionary
     * @param id
     * @return
     */

    Dictionary getDictionaryByid(int id);

    /**
     * 根据pId查询出所有儿子
     * @param pId
     * @return
     */
    List<Dictionary> getAllSon(int pId);

    /**Dictionary
     * 修改
     * @param dictionary
     * @return
     */
    int updateDictionary(Dictionary dictionary);

    /**
     * 删除Dictionary
     * @param id
     * @return
     */
    int removeDictionary(Dictionary dictionary);
}
