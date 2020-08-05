package com.itheima.dao;

import com.itheima.po.Electric;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface ElectricDao {
    /**
     * 进行分页查询
     */
    //获取总条数
    public Integer totalCount(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding);
    //获取用户列表
    public List<Electric> getElectricList(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

    public int addElectric(Electric electric);    //添加宿舍电费信息
    public int deleteElectric(Integer e_id);   //删除宿舍电费信息
    public int updateElectric(Electric electric); //修改宿舍电费信息
//    public int useElectric(Electric electric); //模拟用电，每秒执行一次
    public Electric findElectricById(Integer e_id);
    public List<Electric> getAll();

}
