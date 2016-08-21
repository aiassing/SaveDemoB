# SaveDemoB
**这个demo是在我刚学习Java Web的时候做的。通过JSP页面向Servlet发起请求，Servlet通过服务层，服务层通过model层进行对数据库的一系列操作。**
##环境配置
- [Java6以上的版本](http://jingyan.baidu.com/article/f96699bb8b38e0894e3c1bef.html)
- [MySQL5.6](http://jingyan.baidu.com/article/4b07be3c67853c48b380f311.html)
- [Eclipse](http://jingyan.baidu.com/article/425e69e6d0f6bebe14fc1610.html)
- [Tomcat8](http://jingyan.baidu.com/article/870c6fc33e62bcb03fe4be90.html)

如果不会点击上面的标题或者自行百度。
##开始
-  在MySQL先创建一個数据库，名为demosms，然后在其中运行"demosms.sql"这个文件中的SQL语句。
-  下载，打开Eclipse，导入工程包。(1.0.1之后的版本添加了少量的bootstrap)
-  将MySQL驱动程序加入Tomcat的lib目录下
-  在Eclipse中打开com.camile.conn目录下的这段代码进行修改：
```java
//以下配置在你安装MySQL时候都会让你设置，请记住。
String user = "你的MySQL用户名";
String password = "你的MySQL密码";
```
- 运行项目。在浏览器里访问localhost:8080/demo_sms/
