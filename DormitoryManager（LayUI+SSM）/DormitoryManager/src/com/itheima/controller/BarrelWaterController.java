package com.itheima.controller;

import com.itheima.po.BarrelWater;
import com.itheima.po.PageInfo;
import com.itheima.service.BarrelWaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class BarrelWaterController {

    //依赖注入
    @Autowired
    private BarrelWaterService barrelWaterService;

    /**
     * 分页查询
     * pageIndex 当前页码
     * pageSize  显示条数
     */
    @RequestMapping(value = "/findBarrelWater")
    public String findBarrelWater(Integer d_id,String d_dormbuilding,
                                Integer pageIndex, Integer pageSize, Model model) {

        PageInfo<BarrelWater> di = barrelWaterService.findPageInfo(d_id,d_dormbuilding,
                                            pageIndex,pageSize);
        model.addAttribute("di",di);
        return "barrelWater_list";
    }

    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportbarrelWaterlist", method = RequestMethod.POST)
    @ResponseBody
    public List<BarrelWater> exportBarrelWater(){
        List<BarrelWater> barrelWater = barrelWaterService.getAll();
        return barrelWater;
    }

    /**
     * 添加桶装水配送信息
     */
    @RequestMapping(value = "/addBarrelWater" ,method = RequestMethod.POST)
    @ResponseBody
    public String addBarrelWater( @RequestBody BarrelWater barrelWater) {
        int d = barrelWaterService.addBarrelWater(barrelWater);
        return "barrelWater_list";
    }

    /**
     * 删除桶装水配送信息
     */
    @RequestMapping( "/deleteBarrelWater")
    @ResponseBody
    public String deleteBarrelWater(Integer b_id) {
        int d = barrelWaterService.deleteBarrelWater(b_id);
        return "barrelWater_list";
    }

    /**
     * 修改桶装水配送信息
     */
    @RequestMapping( "/updateBarrelWater")
    public String updateBarrelWater( BarrelWater barrelWater) {
        int d = barrelWaterService.updateBarrelWater(barrelWater);
        return "redirect:/findBarrelWater";
    }
    

    @RequestMapping( "/findBarrelWaterById")
    public String findBarrelWaterById(Integer b_id, HttpSession session) {

        BarrelWater d= barrelWaterService.findBarrelWaterById(b_id);
        session.setAttribute("d",d);
        return "barrelWater_edit";
    }

}

