package fun.afterglow.oes.service.impl;

import fun.afterglow.oes.dao.PresonnelDao;
import fun.afterglow.oes.entity.Presonnel;
import fun.afterglow.oes.service.GlobalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("globalBiz")
public class GlobalServiceImpl implements GlobalService {
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
