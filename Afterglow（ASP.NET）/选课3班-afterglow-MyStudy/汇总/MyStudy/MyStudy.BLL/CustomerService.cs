using MyStudy.DAL;//引用MyStudy.DAL数据访问层
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyStudy.BLL
{
    public class CustomerService
    {
        MyStudyDataContext db = new MyStudyDataContext();
        /// <summary>
        /// 检查用户登录
        /// </summary>
        /// <param name="stuno">用户名</param>
        /// <param name="password">密码</param>
        /// <returns>正确返回用户id， 错误返回0</returns>
        public int CheckLogin(string stuno, string password)
        {
            Users user = (from c in db.Users
                          where c.StuNumber == stuno && c.Password == password
                          select c).FirstOrDefault();
            if (user != null)
            {
                return user.UserId;
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 检查管理员登录
        /// </summary>
        /// <param name="admno">工号</param>
        /// <param name="password">密码</param>
        /// <returns>正确返回用户id， 错误返回0</returns>
        public int CheckAdminLogin(string admno, string password)
        {
            Admins admin = (from e in db.Admins
                          where e.AdminNo == admno && e.Password == password
                          select e).FirstOrDefault();
            if (admin != null)
            {
                return admin.AdminId;
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 向数据库NetView表中插入新的一条纪录
        /// </summary>
        /// <param name="IPAddr">IP地址</param>
        /// <param name="IPSrc">访问来源</param>
        public void InsertNetView(string ipAddress,string ipSrc)
        {
            NetView netView = new NetView
            {
                IPAddr = ipAddress,
                IPSrc = ipSrc
            };
            db.NetView.InsertOnSubmit(netView);
            db.SubmitChanges();
        }

        /// <summary>
        /// 查询NetView总条数（总访问数）
        /// </summary>
        public int CountNetView()
        {
            int count = db.NetView.Count();
            return count;
        }


        /// <summary>
        /// 修改用户Id对应用户的密码
        /// </summary>
        /// <param name="userId">用户Id</param>
        /// <param name="password">新密码</param>
        public void ChangePassword(int userId, string password)
        {
            Users user = (from c in db.Users
                          where c.UserId == userId
                          select c).First();
            user.Password = password;
            db.SubmitChanges();
        }

        /// <summary>
        /// 检查是否已注册过
        /// </summary>
        /// <param name="stuno">用户名</param>
        /// <returns>未注册返回true，否则返回false</returns>
        public bool CheckExist(string stuno)
        {
            Users user = (from c in db.Users
                          where c.StuNumber == stuno
                          select c).FirstOrDefault();
            if (user != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 向数据库中插入新的一条纪录
        /// </summary>
        /// <param name="stuno">学号</param>
        /// <param name="name">姓名</param>
        /// <param name="password">密码</param>
        public void Insert(string stuno, string name,string password)
        {
            Users user = new Users
            {
                StuNumber = stuno,
                Name = name,
                Password = password
            };
            db.Users.InsertOnSubmit(user);
        db.SubmitChanges();
        }

        /// <summary>
        /// 删除一个用户
        /// </summary>
        /// <param name="userId">userId</param>
        public void Delete(int userId)
        {
            Users user = (from c in db.Users
                          where c.UserId == userId
                          select c).FirstOrDefault();
            db.Users.DeleteOnSubmit(user);
            db.SubmitChanges();
        }

        /// <summary>
        /// 向数据库College表中插入新的一条纪录
        /// </summary>
        /// <param name="stuno">学号</param>
        /// <param name="name">姓名</param>
        /// <param name="stucollege">学校</param>
        public void InsertCollege(string stuno, string name, string stucollege)
        {
            Colleges college = new Colleges
            {
                StuNumber = stuno,
                Name = name,
                College = stucollege
            };
            db.Colleges.InsertOnSubmit(college);
            db.SubmitChanges();
        }

        /// <summary>
        /// 修改用户信息
        /// </summary>
        /// <param name="stuno">学号</param>
        /// <param name="college">网址</param>
        /// <param name="name">姓名</param>
        public void ChangeInfo(string stuno, string college, string name)
        {
            Users user = (from c in db.Users
                          where c.StuNumber == stuno
                          select c).First();
            Colleges colleges = (from d in db.Colleges
                              where d.StuNumber == stuno
                              select d).First();
            user.Name = name;
            colleges.Name = name;
            colleges.College = college;
            db.SubmitChanges();
        }
    }




}
