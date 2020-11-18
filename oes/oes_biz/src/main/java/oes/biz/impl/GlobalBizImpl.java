package oes.biz.impl;

import oes.biz.GlobalBiz;
import oes.dao.PresonnelDao;
import oes.entity.Presonnel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("globalBiz")
public class GlobalBizImpl implements GlobalBiz {
    @Autowired
    private PresonnelDao presonnelDao;

    @Override
    public Presonnel login(Integer number, String password) {
        Presonnel presonnel = presonnelDao.select(number);
        if (presonnel!=null&&presonnel.getPassword().equals(password)){
            return presonnel;
        }
        return null;
    }

    @Override
    public void changPassword(Presonnel presonnel) {
        presonnelDao.update(presonnel);
    }
}
