# SaveDemoB
**这个demo是在我刚学习Java Web的时候做的。通过JSP页面向Servlet发起请求，Servlet通过服务层，服务层通过model层进行对数据库的一系列操作。**

##版本说明
版本说明
- v1.0.0：第一个版本。
- v1.0.1: 修复了一个关于表单的bug。
- v1.1.0: 添加了BootStrap样式，使网页美观了一些。
- v1.2.0: 采用注解的形式去完成url的路径映射，离开web.xml繁杂的配置；并添加了Maven支持。

##环境配置
- [Java6以上的版本](http://jingyan.baidu.com/article/f96699bb8b38e0894e3c1bef.html)
- [MySQL5.6](http://jingyan.baidu.com/article/4b07be3c67853c48b380f311.html)
- [Eclipse](http://jingyan.baidu.com/article/425e69e6d0f6bebe14fc1610.html)
- [Tomcat8](http://jingyan.baidu.com/article/870c6fc33e62bcb03fe4be90.html)

如果不会点击上面的标题或者自行百度。
##开始
-  在MySQL先创建一個数据库，名为demosms，然后在其中运行"demosms.sql"这个文件中的SQL语句。
-  下载，导入该Maven工程。
-  将MySQL驱动程序加入Tomcat的lib目录下
-  在Eclipse中打开com.camile.conn目录下的这段代码进行修改：
```java
//以下配置在你安装MySQL时候都会让你设置，请记住。
String user = "你的MySQL用户名";
String password = "你的MySQL密码";
```
- 运行项目。在浏览器里访问localhost:8080/demo_sms/
