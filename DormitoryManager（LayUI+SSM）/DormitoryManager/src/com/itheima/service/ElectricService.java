package com.itheima.service;

import com.itheima.po.Electric;
import com.itheima.po.PageInfo;

import java.util.List;


public interface ElectricService {
    //分页查询
    public PageInfo<Electric> findPageInfo(Integer d_id, String d_dormbuilding, Integer pageIndex, Integer pageSize);

    public int addElectric(Electric electric);    //添加宿舍信息
    public int deleteElectric(Integer e_id);   //删除宿舍信息
    public int updateElectric(Electric electric); //修改宿舍信息
//    public int useElectric(Electric electric); //模拟用电，每秒执行一次
    public Electric findElectricById(Integer e_id);
    public List<Electric> getAll();
}
