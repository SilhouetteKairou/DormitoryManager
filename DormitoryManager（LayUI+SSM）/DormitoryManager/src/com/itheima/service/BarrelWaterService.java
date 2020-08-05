package com.itheima.service;

import com.itheima.po.BarrelWater;
import com.itheima.po.PageInfo;

import java.util.List;


public interface BarrelWaterService {
    //分页查询
    public PageInfo<BarrelWater> findPageInfo(Integer d_id, String d_dormbuilding, Integer pageIndex, Integer pageSize);

    public int addBarrelWater(BarrelWater barrelWater);    //添加桶装水购买信息
    public int deleteBarrelWater(Integer b_id);   //删除桶装水购买信息
    public int updateBarrelWater(BarrelWater barrelWater); //修改桶装水购买信息
    public BarrelWater findBarrelWaterById(Integer b_id);
    public List<BarrelWater> getAll();
}
