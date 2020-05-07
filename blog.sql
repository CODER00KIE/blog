/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.6.25 : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blog`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `first_picture` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `appreciation` int(11) NOT NULL DEFAULT '0',
  `share_statement` int(11) NOT NULL DEFAULT '0',
  `commentabled` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `recommend` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text,
  `tag_ids` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`content`,`first_picture`,`flag`,`views`,`appreciation`,`share_statement`,`commentabled`,`published`,`recommend`,`create_time`,`update_time`,`type_id`,`user_id`,`description`,`tag_ids`) values (13,'get和post的区别','Get和Post区别\r\n1. Get是不安全的，因为在传输过程，数据被放在请求的URL中；Post的所有操作对用户来说都是不可见的。\r\n2. Get传送的数据量较小，这主要是因为受URL长度限制；Post传送的数据量较大，一般被默认为不受限制。\r\n3. Get限制Form表单的数据集的值必须为ASCII字符；而Post支持整个ISO10646字符集。\r\n4. Get执行效率却比Post方法好。Get是form提交的默认方法。\r\n5. GET产生一个TCP数据包；POST产生两个TCP数据包。（非必然，客户端可灵活决定）','https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1588672712&di=cd884842cb9acbcd8586bb85bdad1964&src=http://p.ananas.chaoxing.com/star3/733_434/56cbbf4fe4b0e85354cd1249.jpg','',0,0,0,0,1,1,'2020-05-05 18:00:03','2020-05-05 18:05:55',7,2,'Get和Post两个好基友','9'),(14,'HTTP请求的全过程','Http请求的完全过程\r\n1. 浏览器根据域名解析IP地址（DNS）,并查DNS缓存\r\n2. 浏览器与WEB服务器建立一个TCP连接\r\n3. 浏览器给WEB服务器发送一个HTTP请求（GET/POST）：一个HTTP请求报文由请求行（requestline）、请求头部（headers）、空行（blank line）和请求数据（request body）4个部分组成。\r\n4. 服务端响应HTTP响应报文，报文由状态行（status line）、相应头部（headers）、空行（blankline）和响应数据（response body）4个部分组成。\r\n5. 浏览器解析渲染','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588698354932&di=4477c9fff84e81748e8a4550a8bf6230&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20200417%2F489200b7745a4bb1befde8811869f16b.jpeg','',0,0,0,0,0,1,'2020-05-05 18:20:55','2020-05-05 22:18:07',7,2,'这个得记住哟','9'),(15,'Tcp和Udp的区别','tcp和udp区别\r\n1. TCP面向连接，UDP是无连接的，即发送数据之前不需要建立连接。\r\n2. TCP提供可靠的服务。也就是说，通过TCP连接传送的数据，无差错，不丢失，不重复，且按序到\r\n达;UDP尽最大努力交付，即不保证可靠交付。\r\n3. TCP面向字节流，实际上是TCP把数据看成一连串无结构的字节流，UDP是面向报文的，UDP没有\r\n拥塞控制，因此网络出现拥塞不会使源主机的发送速率降低（对实时应用很有用，如IP电话，实时\r\n视频会议等）\r\n4. 每一条TCP连接只能是点到点的，UDP支持一对一，一对多，多对一和多对多的交互通信。\r\n5. TCP首部开销20字节，UDP的首部开销小，只有8个字节。\r\n6. TCP的逻辑通信信道是全双工的可靠信道，UDP则是不可靠信道。','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2872088671,1183626711&fm=26&gp=0.jpg','',0,0,0,0,1,1,'2020-05-05 19:32:50','2020-05-05 19:32:50',7,2,'tcp和udp','9'),(16,'Tcp和Udp的优缺点','tcp和udp的优点\r\nTCP的优点： 可靠，稳定 TCP的可靠体现在TCP在传递数据之前，会有三次握手来建立连接，而且在数据传递时，有确认、窗口、重传、拥塞控制机制，在数据传完后，还会断开连接用来节约系统资源。 \r\n\r\n\r\nTCP的缺点： 慢，效率低，占用系统资源高，易被攻击 TCP在传递数据之前，要先建连接，这会消耗时间，而且在数据传递时，确认机制、重传机制、拥塞控制机制等都会消耗大量的时间，而且要在每台设备上维护所有的传输连接，事实上，每个连接都会占用系统的CPU、内存等硬件资源。 而且，因为TCP有确认机制、三次握手机制，这些也导致TCP容易被人利用，实现DOS、DDOS、CC等攻击。\r\n\r\n\r\nUDP的优点： 快，比TCP稍安全 UDP没有TCP的握手、确认、窗口、重传、拥塞控制等机制，UDP是一个无状态的传输协议，所以它在传递数据时非常快。没有TCP的这些机制，UDP较TCP被攻击者利用的漏洞就要少一些。但UDP也是无法避免攻击的，比如：UDP Flood攻击…… \r\n\r\n\r\nUDP的缺点： 不可靠，不稳定 因为UDP没有TCP那些可靠的机制，在数据传递时，如果网络质量不好，就会很容易丢包。 \r\n\r\n\r\n什么时候应该使用TCP： 当对网络通讯质量有要求的\r\n时候，比如：整个数据要准确无误的传递给对方，这往往用于一些要求可靠的应用，比如HTTP、HTTPS、FTP等传输文件的协议，POP、SMTP等邮件传输的协议。 在日常生活中，常见使用TCP协议的应用如下： 浏览器，用的HTTP FlashFXP，用的FTP Outlook，用的POP、SMTP Putty，用的Telnet、SSH QQ文件传输。\r\n\r\n\r\n什么时候应该使用UDP： 当对网络通讯质量要求不高的时候，要\r\n求网络通讯速度能尽量的快，这时就可以使用UDP。 比如，日常生活中，常见使用UDP协议的应用如下： QQ语音 QQ视频 TFTP。','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1668803511,3546994573&fm=11&gp=0.jpg','',0,0,0,0,1,1,'2020-05-05 22:13:24','2020-05-05 22:15:51',7,2,'tcp和udp','9'),(17,'三次握手和四次挥手','# 三次握手\r\n第一次握手：建立连接时，客户端发送syn包（syn=x）到服务器，并进入SYN_SENT状态，等待服务器确认；SYN：同步序列编号（Synchronize Sequence Numbers）。\r\n第二次握手：服务器收到syn包，必须确认客户的SYN（ack=x+1），同时自己也发送一个SYN包（syn=y），即SYN+ACK包，此时服务器进入SYN_RECV状态；\r\n第三次握手：客户端收到服务器的SYN+ACK包，向服务器发送确认包ACK(ack=y+1），此包发送完毕，客户端和服务器进入ESTABLISHED（TCP连接成功）状态，完成三次握手。\r\n# 为什么不能两次握手\r\nTCP是一个双向通信协议，通信双方都有能力发送信息，并接收响应。如果只是两次握手， 至多只有连接发起方的起始序列号能被确认， 另一方选择的序列号则得不到确认\r\n# 四次挥手\r\n1. 客户端进程发出连接释放报文，并且停止发送数据。释放数据报文首部，FIN=1，其序列号为seq=u（等于前面已经传送过来的数据的最后一个字节的序号加1），此时，客户端进入FIN-WAIT-1（终止等待1）状态。 TCP规定，FIN报文段即使不携带数据，也要消耗一个序号。\r\n2. 服务器收到连接释放报文，发出确认报文，ACK=1，ack=u+1，并且带上自己的序列号seq=v，此时，服务端就进入了CLOSE-WAIT（关闭等待）状态。TCP服务器通知高层的应用进程，客户端向服务器的方向就释放了，这时候处于半关闭状态，即客户端已经没有数据要发送了，但是服务器若发送数据，客户端依然要接受。这个状态还要持续一段时间，也就是整个CLOSE-WAIT状态持续的时间。\r\n3. 客户端收到服务器的确认请求后，此时，客户端就进入FIN-WAIT-2（终止等待2）状态，等待服务器发送连接释放报文（在这之前还需要接受服务器发送的最后的数据）。\r\n4. 服务器将最后的数据发送完毕后，就向客户端发送连接释放报文，FIN=1，ack=u+1，由于在半关闭状态，服务器很可能又发送了一些数据，假定此时的序列号为seq=w，此时，服务器就进入了LAST-ACK（最后确认）状态，等待客户端的确认。\r\n5. 客户端收到服务器的连接释放报文后，必须发出确认，ACK=1，ack=w+1，而自己的序列号是seq=u+1，此时，客户端就进入了TIME-WAIT（时间等待）状态。注意此时TCP连接还没有释放，必须经过2∗∗MSL（最长报文段寿命）的时间后，当客户端撤销相应的TCB后，才进入CLOSED状态。\r\n6. 服务器只要收到了客户端发出的确认，立即进入CLOSED状态。同样，撤销TCB后，就结束了这次的TCP连接。可以看到，服务器结束TCP连接的时间要比客户端早一些\r\n# 为什么连接的时候是三次握手，关闭的时候却是四次握手\r\n因为当Server端收到Client端的SYN连接请求报文后，可以直接发送SYN+ACK报文。其中ACK报文是用来应答的，SYN报文是用来同步的。但是关闭连接时，当Server端收到FIN报文时，很可能并不会立即\r\n关闭SOCKET，所以只能先回复一个ACK报文，告诉Client端，\"你发的FIN报文我收到了\"。只有等到我Server端所有的报文都发送完了，我才能发送FIN报文，因此不能一起发送。故需要四步握手。','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1736564644,4221342070&fm=26&gp=0.jpg','',0,0,0,0,1,1,'2020-05-05 22:23:07','2020-05-05 22:23:07',7,2,'快来了解我吧','9'),(18,'进程和线程','进程和线程\r\n1. 进程是操作系统资源分配的最小单位，线程是CPU任务调度的最小单位。一个进程可以包含多个线\r\n程，所以进程和线程都是一个时间段的描述，是CPU工作时间段的描述，不过是颗粒大小不同。\r\n2. 不同进程间数据很难共享，同一进程下不同线程间数据很易共享。\r\n3. 每个进程都有独立的代码和数据空间，进程要比线程消耗更多的计算机资源。线程可以看做轻量级\r\n的进程，同一类线程共享代码和数据空间，每个线程都有自己独立的运行栈和程序计数器，线程之\r\n间切换的开销小。\r\n4. 进程间不会相互影响，一个线程挂掉将导致整个进程挂掉。\r\n5. 系统在运行的时候会为每个进程分配不同的内存空间；而对线程而言，除了CPU外，系统不会为线\r\n程分配内存（线程所使用的资源来自其所属进程的资源），线程组之间只能共享资源。\r\n进程的组成部分\r\n进程由进程控制块（PCB）、程序段、数据段三部分组成。\r\n进程的通信方式\r\n1. 无名管道：半双工的，即数据只能在一个方向上流动，只能用于具有亲缘关系的进程之间的通信，\r\n可以看成是一种特殊的文件，对于它的读写也可以使用普通的read、write 等函数。但是它不是普\r\n通的文件，并不属于其他任何文件系统，并且只存在于内存中。\r\n2. FIFO命名管道：FIFO是一种文件类型，可以在无关的进程之间交换数据，与无名管道不同，FIFO\r\n有路径名与之相关联，它以一种特殊设备文件形式存在于文件系统中。\r\n3. 消息队列：消息队列，是消息的链接表，存放在内核中。一个消息队列由一个标识符（即队列\r\nID）来标识。\r\n4. 信号量：信号量是一个计数器，信号量用于实现进程间的互斥与同步，而不是用于存储进程间通信\r\n数据。\r\n5. 共享内存：共享内存指两个或多个进程共享一个给定的存储区，一般配合信号量使用。\r\n进程间五种通信方式的比较\r\n1. 管道：速度慢，容量有限，只有父子进程能通讯。\r\n2. FIFO：任何进程间都能通讯，但速度慢。\r\n3. 消息队列：容量受到系统限制，且要注意第一次读的时候，要考虑上一次没有读完数据的问题。\r\n4. 信号量：不能传递复杂消息，只能用来同步。\r\n5. 共享内存区：能够很容易控制容量，速度快，但要保持同步，比如一个进程在写的时候，另一个进\r\n程要注意读写的问题，相当于线程中的线程安全，当然，共享内存区同样可以用作线程间通讯，不\r\n过没这个必要，线程间本来就已经共享了同一进程内的一块内存。','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3551370202,2453856561&fm=26&gp=0.jpg','',0,0,0,0,1,1,'2020-05-05 22:40:00','2020-05-05 22:44:57',7,2,'来了解进程线程吧','10'),(19,'死锁的必要条件和如何预防死锁','死锁的4个必要条件\r\n1. 互斥条件：一个资源每次只能被一个线程使用；\r\n2. 请求与保持条件：一个线程因请求资源而阻塞时，对已获得的资源保持不放；\r\n3. 不剥夺条件：进程已经获得的资源，在未使用完之前，不能强行剥夺；\r\n4. 循环等待条件：若干线程之间形成一种头尾相接的循环等待资源关系。\r\n如何避免（预防）死锁\r\n1. 破坏“请求和保持”条件：让进程在申请资源时，一次性申请所有需要用到的资源，不要一次一次来\r\n申请，当申请的资源有一些没空，那就让线程等待。不过这个方法比较浪费资源，进程可能经常处\r\n于饥饿状态。还有一种方法是，要求进程在申请资源前，要释放自己拥有的资源。\r\n2. 破坏“不可抢占”条件：允许进程进行抢占，方法一：如果去抢资源，被拒绝，就释放自己的资源。\r\n方法二：操作系统允许抢，只要你优先级大，可以抢到。\r\n3. 破坏“循环等待”条件：将系统中的所有资源统一编号，进程可在任何时刻提出资源申请，但所有申\r\n请必须按照资源的编号顺序提出（指定获取锁的顺序，顺序加锁）。','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588699792489&di=1993c3dd1f5d4153b2498083e9fea22e&imgtype=0&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D3920487158%2C850099289%26fm%3D214%26gp%3D0.jpg','',0,0,0,0,1,1,'2020-05-05 22:42:25','2020-05-05 22:45:09',7,2,'你希望出现死锁吗','10');

/*Table structure for table `t_blog_tags` */

DROP TABLE IF EXISTS `t_blog_tags`;

CREATE TABLE `t_blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) DEFAULT NULL,
  `blog_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_blog_tags` */

insert  into `t_blog_tags`(`id`,`tag_id`,`blog_id`) values (80,9,'13'),(81,9,'13'),(82,9,'13'),(83,9,'14'),(84,9,'14'),(85,9,'15'),(86,9,'16'),(87,9,'16'),(88,9,'14'),(89,9,'17'),(90,10,'18'),(92,10,'19'),(93,10,'18'),(94,10,'18'),(95,10,'19');

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `admincomment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_comment` */

/*Table structure for table `t_tag` */

DROP TABLE IF EXISTS `t_tag`;

CREATE TABLE `t_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_tag` */

insert  into `t_tag`(`id`,`name`) values (9,'计算机网络'),(10,'操作系统');

/*Table structure for table `t_type` */

DROP TABLE IF EXISTS `t_type`;

CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_type` */

insert  into `t_type`(`id`,`name`) values (7,'面试');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`nickname`,`username`,`password`,`email`,`avatar`,`type`,`create_time`,`update_time`) values (2,'管理员','CodeRookie','96e79218965eb72c92a549dd5a330112','17633882284@163.com','https://iknow-pic.cdn.bcebos.com/b17eca8065380cd7aed7bf64a344ad3458828169',1,'2020-05-01 12:12:12',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
