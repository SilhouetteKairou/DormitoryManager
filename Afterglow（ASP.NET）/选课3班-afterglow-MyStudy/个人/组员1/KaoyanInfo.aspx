<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KaoyanInfo.aspx.cs" Inherits="KaoyanInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
        <div class="container theme-showcase" role="main">
        <div class="panel panel-default">
            <div class="panel-heading">研招信息分享</div>
            <div class="panel-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        
                        <div class="i-title"><span style='color: #FF0000;'>招生访谈 &nbsp;&nbsp;&nbsp;&nbsp;</span> </div>
                        <div class="item-content active">
                        <ul class="index-list">
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyft/201911/20191105/1844208351.html" target="_blank">
                                        【访谈】长安大学：2020年起招收建筑学硕士...</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyft/201910/20191030/1839471233.html" target="_blank">
                                        【访谈】浙江科技学院：全日制奖助100%覆盖...</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyft/201910/20191030/1839436976.html" target="_blank">
                                        【访谈】广西科技大学：2020年计划招收503...</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyft/201910/20191022/1837120428.html" target="_blank">
                                        【访谈】河南理工大学：初试专业课考试科目...</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyft/201910/20191022/1837065800.html" target="_blank">
                                        【访谈】温州大学：读研奖金直接抵扣学费</a>
                                </li>
                             <br /><br />
                            <asp:Button ID="btnZsft" runat="server" CssClass="btn btn-lg btn-primary" Text=">>>点击查看更多" OnClick="Btnzsft_Click" />
                            
                        </ul>
                    </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="i-title"><span style='color: #FF0000;'>专业解析 &nbsp;&nbsp;&nbsp;&nbsp; </span></div>
                        <div class="item-content active">
                        <ul class="index-list">
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyzy/201901/20190115/1757581196.html" target="_blank">
                                        8大最热门专硕，考研的你不准不知道！</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyzy/201805/20180514/1686886883.html" target="_blank">
                                        考研人数最多的五大专业，了解一下？</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyzy/201804/20180409/1676256477.html" target="_blank">
                                        MPAcc考研应选择名气大的还是专业强的院校...</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyzy/201804/20180408/1674942760.html" target="_blank">
                                        为什么农学考研分数线那么低？是没有好学校...</a>
                                </li>
                            
                                <li>
                                    <a href="https://yz.chsi.com.cn/kyzx/kyzy/201803/20180329/1673065909.html" target="_blank">
                                        农学考研能学啥，是否好就业?</a>
                                </li>
                            <br /><br />
                            <asp:Button ID="btnZyjx" runat="server" CssClass="btn btn-lg btn-primary" Text=">>>点击查看更多" OnClick="Btnzyjx_Click" />
                            
                            
                        </ul>
                    </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="i-title"><span style='color: #FF0000;'>复试备考 &nbsp;&nbsp;&nbsp;&nbsp;</span> </div>
                        <div class="item-content active">
                        <ul class="index-list">
                                <li>
                            <a href="https://yz.chsi.com.cn/kyzx/kydt/202004/20200414/1889833768.html" target="_blank">
                                2020年研考复试如何安排？8张大图告诉你</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/fstj/202005/20200511/1908430065.html" target="_blank">
                                西安科技大学硕士研究生网络远程复试指南</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/fstj/202005/20200511/1908381978.html" target="_blank">
                                首都师范大学2020年硕士研究生招生网络远程...</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/fstj/202005/20200509/1907453299.html" target="_blank">
                                中南大学研究生招生网络远程复试考场规则</a>
                        </li>
                            <br /><br />
                            <asp:Button ID="btnFsbk" runat="server" CssClass="btn btn-lg btn-primary" Text=">>>点击查看更多" OnClick="Btnfsbk_Click" />
                            
                        </ul>
                    </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="i-title"><span style='color: #FF0000;'>推荐免试 &nbsp;&nbsp;&nbsp;&nbsp;</span></div>
                        <div class="item-content active">
                        <ul class="index-list">
                    
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201907/20190717/1806807148.html" target="_blank"><a href="http://zhinengdayi.com/page/detail/PVKZRL/892/34939" target="_blank">中国地质大学（武汉）2020年接收推免生章程</a></a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201910/20191014/1834879193.html" target="_blank">北京联合大学2020年接收推免硕士研究生招生章程</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201910/20191012/1834567499.html" target="_blank">南京农业大学2020年招收推荐免试研究生章程</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201910/20191009/1832040960.html" target="_blank">哈尔滨医科大学关于做好2020年推荐优秀应届本科...</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201909/20190926/1829291739.html" target="_blank"><a href="http://yjsy.gsau.edu.cn/info/1047/87342.htm" target="_blank">甘肃农业大学2020年接收推免生工作的通知</a></a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201909/20190918/1824206491.html" target="_blank"><a href="https://yz.szu.edu.cn/info/1041/11119.htm" target="_blank">深圳大学2020年接收推免研究生(含直博生)招生公...</a></a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201909/20190912/1822900804.html" target="_blank">三峡大学2020年接收推荐免试硕士研究生工作办法</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/tmjz/201909/20190911/1822152535.html" target="_blank">河北大学2020年接收校内外推免研究生（含直博生...</a>
                        </li>
                    <br /><br />
                            <asp:Button ID="btnTjms" runat="server" CssClass="btn btn-lg btn-primary" Text=">>>点击查看更多" OnClick="Btntjms_Click" />
                            
                </ul>
                    </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="i-title"><span style='color: #FF0000;'>招生资讯 &nbsp;&nbsp;&nbsp;&nbsp; </span></div>
                        <div class="item-content active">
                        <ul class="index-list">
                                <li class="clearfix">
                                <a href="https://yz.chsi.com.cn/kyzx/kydt/202004/20200414/1889807201.html" target="_blank">
                                        教育部公布2020年全国硕士研究生招生考试国家分数线</a>
                            </li>
                        
                            <li class="clearfix">
                                <a href="https://yz.chsi.com.cn/kyzx/kydt/202006/20200604/1926929834.html" target="_blank">
                                        成都助推高校与城市共生共赢 发布加强科技创新能力建设“18条”</a>
                            </li>
                        
                            <li class="clearfix">
                                <a href="https://yz.chsi.com.cn/kyzx/kydt/202006/20200604/1926881674.html" target="_blank">
                                        李克强对全国普通高等学校毕业生就业创业工作电视电话会议作出重...</a>
                            </li>
                        
                            <li class="clearfix">
                                <a href="https://yz.chsi.com.cn/kyzx/kydt/202006/20200603/1926570094.html" target="_blank">
                                        教育部、中央军委国防动员部部署征兵工作</a>
                            </li>
                        
                            <li class="clearfix">
                                <a href="https://yz.chsi.com.cn/kyzx/kydt/202006/20200603/1926491225.html" target="_blank">
                                        2021年起，“退役大学生士兵”专项硕士研究生招生规模每年扩大到...</a>
                            </li>
                        
                            <li class="clearfix">
                                <a href="https://yz.chsi.com.cn/kyzx/kydt/202006/20200601/1925862975.html" target="_blank">
                                        教育部印发通知明确在普通高校继续开展第二学士学位教育</a>
                            </li>
                            <br /><br />
                            <asp:Button ID="btnZszx" runat="server" CssClass="btn btn-lg btn-primary" Text=">>>点击查看更多" OnClick="Btnzszx_Click" />
                            
                        </ul>
                    </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="i-title"><span style='color: #FF0000;'>招生简章 &nbsp;&nbsp;&nbsp;&nbsp; </span></div>
                        <div class="item-content active">
                        <ul class="index-list">
                                <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/201910/20191015/1835014298.html" target="_blank">
                                贵州民族大学2020年硕士研究生招生章程</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/201910/20191014/1834879192.html" target="_blank">
                                北京联合大学2020年硕士研究生报考公告</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/201910/20191014/1834879188.html" target="_blank">
                                第四军医大学2020年硕士研究生招生简章</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/201910/20191008/1831984664.html" target="_blank">
                                上海有机化学研究所2020年硕士研究生招生简章</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/201909/20190929/1830498728.html" target="_blank">
                                中国人民警察大学2020年硕士研究生招生章程</a>
                        </li>
                    
                        <li>
                            <a href="https://yz.chsi.com.cn/kyzx/zsjz/201909/20190923/1826596470.html" target="_blank">
                                中国科学院东北地理与农业生态研究所2020年招收...</a>
                        </li>
                            <br /><br />
                            <asp:Button ID="btnZsjz" runat="server" CssClass="btn btn-lg btn-primary" Text=">>>点击查看更多" OnClick="Btnzsjz_Click" />
                    
                            
                        </ul>
                    </div>
                    </div>
                    <div class="form-group">
                        &nbsp;&nbsp;
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

