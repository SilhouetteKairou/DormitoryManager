package com.itheima.service.impl;

import com.itheima.dao.ElectricDao;
import com.itheima.po.Electric;
import com.itheima.po.PageInfo;
import com.itheima.service.ElectricService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("electricService")
@Transactional
public class ElectricServiceImpl implements ElectricService {
    // classDao
    @Autowired
    private ElectricDao electricDao;


    //分页查询
    @Override
    public PageInfo<Electric> findPageInfo(Integer d_id, String d_dormbuilding, Integer pageIndex, Integer pageSize) {
        PageInfo<Electric> pi = new PageInfo<Electric>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = electricDao.totalCount(d_id,d_dormbuilding);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示宿舍信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Electric> electricList =	electricDao.getElectricList(d_id,d_dormbuilding,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(electricList);
        }
        return pi;
    }

    @Override
    public List<Electric> getAll(){
        List<Electric> electricList = electricDao.getAll();
        return electricList;
    }

    //添加电费信息
    @Override
    public int addElectric(Electric electric) {
        return electricDao.addElectric(electric);
    }

    //通过id删除电费信息
    @Override
    public int deleteElectric(Integer e_id) {
        return electricDao.deleteElectric(e_id);
    }

    //修改电费信息
    @Override
    public int updateElectric(Electric electric) {
        return electricDao.updateElectric(electric);
    }

//    //模拟用电，每秒执行一次
//    @Override
//    public int useElectric(Electric electric) { return electricDao.useElectric(electric); }

    @Override
    public Electric findElectricById (Integer e_id){
        Electric d = electricDao.findElectricById(e_id);
        return  d;
    }

}

