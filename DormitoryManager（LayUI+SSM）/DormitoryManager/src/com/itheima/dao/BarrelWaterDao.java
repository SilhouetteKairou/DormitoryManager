package com.itheima.dao;

import com.itheima.po.BarrelWater;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface BarrelWaterDao {
    /**
     * 进行分页查询
     */
    //获取总条数
    public Integer totalCount(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding);
    //获取用户列表
    public List<BarrelWater> getBarrelWaterList(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

    public int addBarrelWater(BarrelWater barrelWater);    //添加桶装水购买信息
    public int deleteBarrelWater(Integer b_id);   //删除桶装水购买信息
    public int updateBarrelWater(BarrelWater barrelWater); //修改桶装水购买信息
    public BarrelWater findBarrelWaterById(Integer b_id);
    public List<BarrelWater> getAll();

}
