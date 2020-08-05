package com.itheima.po;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class BarrelWater {

    private Integer b_id;
    private Integer d_id;
    private String  d_dormbuilding;
    private Integer d_barrelwater_monovalent;
    private Integer d_barrelcount;
    private Integer d_amount;
    private String d_payment;
    private String d_distribute;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date create_time;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date update_time;

    public Integer getB_id() {
        return b_id;
    }

    public void setB_id(Integer b_id) {
        this.b_id = b_id;
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

    public Integer getD_barrelwater_monovalent() {
        return d_barrelwater_monovalent;
    }

    public void setD_barrelwater_monovalent(Integer d_barrelwater_monovalent) {
        this.d_barrelwater_monovalent = d_barrelwater_monovalent;
    }

    public Integer getD_barrelcount() {
        return d_barrelcount;
    }

    public void setD_barrelcount(Integer d_barrelcount) {
        this.d_barrelcount = d_barrelcount;
    }

    public Integer getD_amount() {
        return d_amount;
    }

    public void setD_amount(Integer d_amount) {
        this.d_amount = d_amount;
    }

    public String getD_payment() {
        return d_payment;
    }

    public void setD_payment(String d_payment) {
        this.d_payment = d_payment;
    }

    public String getD_distribute() {
        return d_distribute;
    }

    public void setD_distribute(String d_distribute) {
        this.d_distribute = d_distribute;
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
