<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改信息</title>
    <link rel="icon" href="/images/favicon.ico" sizes="32x32" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="/css/pg_btn.css">
    <script type="text/javascript" src="./js/jquery-1.3.2.min.js"></script>
    <script src="lib/layui/layui.js"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
</head>

<body>

<div class="x-body">
    <form class="layui-form"  id="f_auto" action="/updateBarrelWater" method="post" >
        <input type="hidden" value="${sessionScope.d.b_id}" name="b_id" id="b_id"/>
        <div class="layui-form-item">
            <label for="d_id" class="layui-form-label">
                <span class="">宿舍编号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_id" name="d_id"
                       autocomplete="off" value="${sessionScope.d.d_id}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="d_dormbuilding" class="layui-form-label">
                <span class="">宿舍楼</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_dormbuilding" name="d_dormbuilding"
                       autocomplete="off" value="${sessionScope.d.d_dormbuilding}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="d_barrelwater_monovalent" class="layui-form-label">
                <span class="">桶装水单价</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_barrelwater_monovalent" name="d_barrelwater_monovalent"
                       autocomplete="off" value="${sessionScope.d.d_barrelwater_monovalent}" class="layui-input" readonly>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="d_barrelcount" class="layui-form-label">
                <span class="">桶装水数量</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_barrelcount" name="d_barrelcount"
                       autocomplete="off" value="${sessionScope.d.d_barrelcount}" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label" style="width:100px">支付方式：</label>
            <div class="layui-input-block" id="d_payment">
                <input type="radio"  name="d_payment" value="1" title="微信" lay-filter="aaa"/>
                <input type="radio"  name="d_payment" value="2" title="支付宝" lay-filter="aaa"/>
                <input type="radio"  name="d_payment" value="3" title="银联" lay-filter="aaa"/>
                <input type="radio"  name="d_payment" value="4" title="校园卡" lay-filter="aaa"/>
                <input type="radio"  name="d_payment" value="5" title="现金" lay-filter="aaa"/>
                <input type="radio"  name="d_payment" value="6" title="QQ支付" lay-filter="aaa"/>
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label" style="width:100px">配送方式：</label>
            <div class="layui-input-block" id="d_distribute">
                <input type="radio"  name="d_distribute" value="1" title="自提" lay-filter="bbb"/>
                <input type="radio"  name="d_distribute" value="2" title="送货上门" lay-filter="bbb"/>
            </div>
        </div>


        <input type="hidden" value="${sessionScope.d.update_time}" name="update_time" id="update_time"/>

        <div class="layui-form-item" id="btn_xg">
            <button  class="layui-btn" id="btn_on"  lay-submit="" lay-filter="updateClass">
                修改
            </button>
        </div>
    </form>
</div>

<script>
</script>
</body>
</html>

