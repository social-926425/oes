//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package oes.dao;

import oes.entity.Presonnel;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("presonnelDao")
public interface PresonnelDao {
    void insert(Presonnel presonnel);

    void update(Presonnel presonnel);

    void delete(int number);

    Presonnel select(int number);

    List<Presonnel> selectAll();


}
