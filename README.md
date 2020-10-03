# 招聘信息管理系统

## 一、系统开发及运行环境

- 操作系统：Windows10

- Web服务器：Tomcat8.5

- Java开发包：JDK8

- 开发工具：Eclipse

- 数据库：MySQL5.7

- 浏览器：Chrome

## 二、项目结构示意图
1.  **系统结构图** 

![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/151947_5332ba21_8044575.png "jobs_cim.png")
2.  **项目结构图** 
- src：java源代码
- config：配置文件
- WebContent：前端代码

![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/152258_ca804479_8044575.png "src.png")![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/152103_4ddd2ffc_8044575.png "config.png")![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/152137_7d7ea7fa_8044575.png "web.png")

3.  **登录界面** 

![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/153019_adcb31fb_8044575.png "login.png")

4.  **实现CRUD操作界面** 

![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/152204_8a5eb615_8044575.png "CRUD.png")

## 三、增删改查

1. **新增招聘信息**

 ![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/152311_d93b0f4b_8044575.png "create.png")

2. **修改招聘信息**

![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/152321_7ff6b316_8044575.png "update.png")

3. **删除招聘信息**
- 通过获取id删除

4. **查找招聘信息**

![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/152341_22ab5730_8044575.png "retrieve.png")

## 四、数据表

### 1.用户表
| **字段名**    | **类型** | **长度** | **是否主键** | **说明** |
| ------------- | -------- | -------- | ------------ | -------- |
| user_id       | int      | 30       | 是           | 用户id   |
| user_name     | varchar  | 30       | 否           | 用户名   |
| user_password | varchar  | 30       | 否           | 密码     |


### 2.招聘信息表**

| **字段名**        | **类型**    | **长度** | **是否主键** | **说明**     |
| ----------------- | ----------- | -------- | ------------ | ------------ |
| com_id        | int     | 30   | 是       | 公司编号 |
| com_name      | varchar | 30   | 否       | 公司名称 |
| com_principal | varchar | 30   | 否       | 负责人   |
| com_source    | varchar | 30   | 否       | 招聘来源 |
| com_industry  | varchar | 30   | 否       | 招聘行业 |
| com_people    | varchar | 30   | 否       | 公司人数 |
| com_money     | varchar | 30   | 否       | 招聘薪酬 |
| com_education | varchar | 30   | 否       | 学历要求 |
| com_address   | varchar | 30   | 否       | 公司地址 |
###  3.字典映射表

| 字段名**       | **类型** | **长度** | **是否主键** | **说明**     |
| -------------- | -------- | -------- | ------------ | ------------ |
| dict_id        | int      | 30       | 是           | 字典编号     |
| dict_type_code | varchar  | 30       | 否           | 字典类型编号 |
| dict_type_name | varchar  | 30       | 否           | 字典类型名称 |
| dict_item_name | varchar  | 30       | 否           | 字典目标名   |