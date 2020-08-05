package com.itheima.controller;

import com.itheima.po.Electric;
import com.itheima.po.PageInfo;
import com.itheima.service.ElectricService;
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
public class ElectricController {

    //依赖注入
    @Autowired
    private ElectricService electricService;

    /**
     * 分页查询
     * pageIndex 当前页码
     * pageSize  显示条数
     */
    @RequestMapping(value = "/findElectric")
    public String findElectric(Integer d_id,String d_dormbuilding,
                                Integer pageIndex, Integer pageSize, Model model) {

        PageInfo<Electric> di = electricService.findPageInfo(d_id,d_dormbuilding,
                                            pageIndex,pageSize);
        model.addAttribute("di",di);
        return "electric_list";
    }

    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportelectriclist", method = RequestMethod.POST)
    @ResponseBody
    public List<Electric> exportElectric(){
        List<Electric> electric = electricService.getAll();
        return electric;
    }

    /**
     * 添加宿舍电费信息
     */
    @RequestMapping(value = "/addElectric" ,method = RequestMethod.POST)
    @ResponseBody
    public String addElectric( @RequestBody Electric electric) {
        int d = electricService.addElectric(electric);
        return "electric_list";
    }

    /**
     * 删除宿舍电费信息
     */
    @RequestMapping( "/deleteElectric")
    @ResponseBody
    public String deleteElectric(Integer e_id) {
        int d = electricService.deleteElectric(e_id);
        return "electric_list";
    }

    /**
     * 修改宿舍电费信息
     */
    @RequestMapping( "/updateElectric")
    public String updateElectric( Electric electric) {
        int d = electricService.updateElectric(electric);
        return "redirect:/findElectric";
    }

//    /**
//     * 模拟用电，一秒执行一次
//     */
//    @RequestMapping( "/useElectric")
//    @ResponseBody
//    public String useElectric(Electric electric){
//        int d = electricService.useElectric(electric);
//        return "electric_list";
//    }

    @RequestMapping( "/findElectricById")
    public String findElectricById(Integer e_id, HttpSession session) {

        Electric d= electricService.findElectricById(e_id);
        session.setAttribute("d",d);
        return "electric_edit";
    }

}

