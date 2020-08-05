package com.itheima.po;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;


public class Electric {

    private Integer e_id;
    private Integer d_id;
    private String  d_dormbuilding;
    private double d_dormelectric;
    private double d_dormbalance;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date create_time;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date update_time;


    public Integer getE_id() {
        return e_id;
    }

    public void setE_id(Integer e_id) {
        this.e_id = e_id;
    }

    public Integer getD_id() {
        return d_id;
    }

    public void setD_id(Integer d_id) {
        this.d_id = d_id;
    }

    public String getD_dormbuilding() {
        return d_dormbuilding;
    }

    public void setD_dormbuilding(String d_dormbuilding) {
        this.d_dormbuilding = d_dormbuilding;
    }

    public double getD_dormelectric() {
        return d_dormelectric;
    }

    public void setD_dormelectric(double d_dormelectric) {
        this.d_dormelectric = d_dormelectric;
    }

    public double getD_dormbalance() {
        return d_dormbalance;
    }

    public void setD_dormbalance(double d_dormbalance) {
        this.d_dormbalance = d_dormbalance;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

}

