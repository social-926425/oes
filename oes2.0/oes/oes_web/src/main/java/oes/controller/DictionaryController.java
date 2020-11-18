package oes.controller;

import oes.biz.DictionaryBiz;
import oes.entity.Dictionary;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller("dictionaryController")
@RequestMapping("/dictionary")
public class DictionaryController {
    @Autowired
    private DictionaryBiz dictionaryBiz;

    @RequestMapping(value = "/to_add",
            params = {"pId"})
    public String toAdd(Map<String, Object> map, int pId) {
        System.out.println(pId);
        Dictionary parent = dictionaryBiz.getDictionaryBypId(pId);
        System.out.println(parent.getCnName());
        Dictionary dictionary = new Dictionary();
        dictionary.setpId(parent.getId());
        dictionary.setPath(parent.getPath());
        dictionary.setNamePath(parent.getNamePath());
        map.put("parent",parent);
        map.put("dictionary", dictionary);
        return "dictionary_add";
    }

    @RequestMapping(value = "/add")
    public String Add(Dictionary dictionary) {
        dictionaryBiz.addDictionary(dictionary);
        return "redirect:list?pId=" + dictionary.getpId();
    }
    @RequestMapping(value = "/list",params = "pId")
    public String List(Map<String,Object> map,int pId){
        map.put("parent",dictionaryBiz.getDictionaryBypId(pId));
        map.put("dictionary_list",dictionaryBiz.getAllSon(pId));
        return "dictionary_list";
    }


    @RequestMapping(value = "/to_update",params = "id")
    public String tpUpdate(int id,Map<String,Object> map){
        Dictionary dictionary = dictionaryBiz.getDictionaryByid(id);
        map.put("dictionary",dictionary);
        map.put("parent",dictionaryBiz.getDictionaryBypId(dictionary.getpId()));
        return "dictionary_update";

    }
    @RequestMapping(value = "update")
    public String Update(Dictionary dictionary){
        dictionaryBiz.updateDictionary(dictionary);
        return "redirect:list?pId=" + dictionary.getpId();
    }
    @RequestMapping(value = "to_detail",params = "id")
    public String toDetail(Map<String,Object> map,int id){
        Dictionary dictionary = dictionaryBiz.getDictionaryByid(id);
        map.put("dictionary",dictionary);
        map.put("parent",dictionaryBiz.getDictionaryBypId(dictionary.getpId()));
        return "dictionary_detail";
    }
    @RequestMapping(value = "remove",params = "id")
    public String Remove(int id){
        Dictionary dictionary = dictionaryBiz.getDictionaryByid(id);
        int pId = dictionary.getpId();
        dictionaryBiz.removeDictionary(dictionary);
        return "redirect:list?pId=" + pId;
    }

}
