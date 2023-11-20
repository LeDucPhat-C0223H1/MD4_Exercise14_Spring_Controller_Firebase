package ra.MD4_Exercise14.service;

import java.util.List;

public interface IGenericService <T, E>{
    List<T> findAll(); // read

    T findById(E id);

    boolean save(T t); // creat & update

    void deleteById(E id); // delete


}
