package fun.afterglow.oes.service;

import fun.afterglow.oes.entity.Presonnel;

public interface GlobalService {
    Presonnel login(Integer number , String password);
    void changPassword(Presonnel presonnel);
}
