package com.itheima.service.impl;

import com.itheima.dao.BarrelWaterDao;
import com.itheima.po.BarrelWater;
import com.itheima.po.PageInfo;
import com.itheima.service.BarrelWaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("barrelWaterService")
@Transactional
public class BarrelWaterServiceImpl implements BarrelWaterService {
    // classDao
    @Autowired
    private BarrelWaterDao barrelWaterDao;


    //分页查询
    @Override
    public PageInfo<BarrelWater> findPageInfo(Integer d_id, String d_dormbuilding, Integer pageIndex, Integer pageSize) {
        PageInfo<BarrelWater> pi = new PageInfo<BarrelWater>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = barrelWaterDao.totalCount(d_id,d_dormbuilding);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示宿舍信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<BarrelWater> barrelWaterList =	barrelWaterDao.getBarrelWaterList(d_id,d_dormbuilding,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(barrelWaterList);
        }
        return pi;
    }

    @Override
    public List<BarrelWater> getAll(){
        List<BarrelWater> barrelWaterList = barrelWaterDao.getAll();
        return barrelWaterList;
    }

    //添加电费信息
    @Override
    public int addBarrelWater(BarrelWater barrelWater) {
        return barrelWaterDao.addBarrelWater(barrelWater);
    }

    //通过id删除电费信息
    @Override
    public int deleteBarrelWater(Integer b_id) {
        return barrelWaterDao.deleteBarrelWater(b_id);
    }

    //修改电费信息
    @Override
    public int updateBarrelWater(BarrelWater barrelWater) {
        return barrelWaterDao.updateBarrelWater(barrelWater);
    }
    
    @Override
    public BarrelWater findBarrelWaterById (Integer b_id){
        BarrelWater d = barrelWaterDao.findBarrelWaterById(b_id);
        return d;
    }

}

