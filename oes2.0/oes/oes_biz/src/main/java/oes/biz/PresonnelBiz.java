package oes.biz;

import java.util.List;
import oes.entity.Presonnel;

public interface PresonnelBiz {
    void add(Presonnel var1);

    void edit(Presonnel var1);

    void remove(Integer var1);

    Presonnel get(Integer var1);

    List<Presonnel> getAll();
}
