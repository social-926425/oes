package oes.biz;

import oes.entity.Presonnel;

public interface GlobalBiz {
    Presonnel login(Integer number , String password);
    void changPassword(Presonnel presonnel);
}
