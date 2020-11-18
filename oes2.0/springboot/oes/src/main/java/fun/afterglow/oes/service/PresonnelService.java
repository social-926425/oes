package fun.afterglow.oes.service;

import java.util.List;
import fun.afterglow.oes.entity.Presonnel;

public interface PresonnelService {
    void add(Presonnel var1);

    void edit(Presonnel var1);

    void remove(Integer var1);

    Presonnel get(Integer var1);

    List<Presonnel> getAll();
}
