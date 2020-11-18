package oes.biz.impl;

import java.util.List;
import oes.biz.PresonnelBiz;
import oes.dao.PresonnelDao;
import oes.entity.Presonnel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("presonnelBiz")
public class PresonnelBizImpl implements PresonnelBiz {
    @Qualifier("presonnelDao")
    @Autowired
    private PresonnelDao presonnelDao;

    public void add(Presonnel presonnel) {
        presonnel.setPassword("000000");
        this.presonnelDao.insert(presonnel);
    }

    public void edit(Presonnel presonnel) {
        this.presonnelDao.update(presonnel);
    }

    public void remove(Integer id) {
        this.presonnelDao.delete(id);
    }

    public Presonnel get(Integer id) {
        return this.presonnelDao.select(id);
    }

    public List<Presonnel> getAll() {
        return this.presonnelDao.selectAll();
    }
}
