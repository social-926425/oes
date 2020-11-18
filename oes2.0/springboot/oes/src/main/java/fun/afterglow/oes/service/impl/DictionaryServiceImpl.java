package fun.afterglow.oes.service.impl;

import fun.afterglow.oes.service.DictionaryService;
import fun.afterglow.oes.dao.DictionaryDao;
import fun.afterglow.oes.entity.Dictionary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("dictionaryBiz")
public class DictionaryServiceImpl implements DictionaryService {
    @Qualifier("dictionaryDao")
    @Autowired
    private DictionaryDao dictionaryDao;

    @Override
    public int addDictionary(Dictionary dictionary) {
        dictionary.setPath(dictionary.getPath()+"-"+dictionary.getpId());
        dictionary.setNamePath(dictionary.getNamePath()+"-"+dictionary.getCnName());
        return dictionaryDao.insertDictionary(dictionary);
    }

    @Override
    public Dictionary getDictionaryBypId(int pId) {
        return dictionaryDao.selectBypId(pId);
    }

    @Override
    public Dictionary getDictionaryByid(int id) {
        return dictionaryDao.selectById(id);
    }

    @Override
    public List<Dictionary> getAllSon(int pId) {
        return dictionaryDao.queryDictionary(pId);
    }

    @Override
    public int updateDictionary(Dictionary dictionary) {
        return dictionaryDao.editDictionary(dictionary);
    }

    @Override
    public int removeDictionary(Dictionary dictionary) {
        List<Dictionary> dictionaryList = getAllSon(dictionary.getId());
        if (dictionaryList.size()==0){
            return dictionaryDao.deleteDictionary(dictionary.getId());
        }else {
            return 0;
        }

    }


}
