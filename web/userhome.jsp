<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Home</title>
 <link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="css/mosaic_gallery.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="css/slider-theme.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="screen"/>
    </head>
    <% UserInfoBean user = (UserInfoBean)session.getAttribute("user"); %>
    <body>
        <div id="header">
            <div class="container">
                <a href="home.html" id="logo"><img src="images/logo.png" alt="Company Logo" /></a>
                <div class="navigation">
                    <ul>
                        <li class="active">
                            <a href="userhome.jsp">主页</a>
                            <div class="clear"></div>
                        </li>
                       <li>
                            <a href="searchbooks.jsp">图书分类</a>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <a href="donatebook.jsp">图书捐赠</a>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <a href="UserInfoServlet">个人信息</a>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <a href="userabout.jsp">关于</a>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <a href="contact.jsp">联系</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="LogoutServlet">退出登录</a>
						<div class="clear"></div></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="intro">
            <div id="top"></div>
            <div class="container">
                <h2>小编推荐</h2>
                <div class="search">
                    <form action="ReaderSearchServlet">
                        <fieldset>
                            <input type="text" name="search" value="搜索图书"/>
                            <input type="submit" name="submit" value="" />
                        </fieldset>
                    </form>
                    <div class="clear"></div>
                </div>
                 <a class="login"><%=user.getUname() %></a>        
                <div class="clear"></div>
            </div>
        </div>
        <div class="container">
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="content/images/home_slides/1.png" alt="" title="Happy New Year"/>
                    <img src="content/images/home_slides/2.png" alt="" title="Chasing Our Dreams" />
                    <img src="content/images/home_slides/3.png" alt="" title="Do Your Best"/>
                    <img src="content/images/home_slides/4.png" alt="" title="Youth Is The Positive Energy"/>
                    <img src="content/images/home_slides/5.png" alt="" title="The Fairy Tale World"/>
                </div>
            </div>
        </div>
		
        <div id="home-navigation">
            <div class="container">
                <div class="wrapper">
                    <div class="tab">
                        <div class="tab_head parentclear">
                            <div class="head_row">
                                <div class="head_cell">
                                    <a class="selected" href="#tab1"><span>Daliy Rankings</span></a>
                                </div>
                                <div class="head_cell">
                                    <a href="#tab2"><span>Weekly Rankings</span></a>
                                </div>
                                <div class="head_cell">
                                    <a href="#tab3"><span>Month Rankings</span></a>
                                </div>
                                <div class="head_cell">
                                    <a href="#tab4"><span>Readers show</span></a>
                                </div>
                            </div>
                        </div>
						
                        <div class="tab_content" id="tab1">
                            <div class="heading">
                                <h3>图书飙升榜</h3>
                                </div>
                            <div class="tab_review">
                                <div class="review_image_right">
                                    <img src="content/images/1-4/d1.png" alt="post pic" />
                                </div>
                                <div class="content">
                                  <div class="meta left">
                                        <h4>在这复杂的的世界里</h4>Kinds:
                                        <span class="white_tags">文学</span>Author:
                                        <span class="white_tags">韩寒</span>
                                    </div>
                                    <div class="post_date">
                                        <span class="day">1</span>
                                        <span class="month">December 2014</span>
                                    </div>
                                    <div class="clear"></div>
                                    <p>每个人的人生都经历各种变故，各种亲情、爱情、友情剪不断，理还乱。但在这个复杂世界里，有你，有你们就够了。 22位人气作者为我们讲述生命中那些悲欢离合的故事。
微博人气博主【咸贵人】为你讲述男女间那纯粹美好的暗恋故事，青春里没有谁辜负谁，不让你孤单是我能做到的最大的温柔......</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div> 
                            </div>
                            <div class="row">
                                <div class=" span12">
                                    <div style="height:1px; border-bottom:1px solid #453e42;"></div>
                                </div>
                            </div>
							
							<div class="tab_review">
                                <div class="review_image_left">
                                    <img src="content/images/1-4/d2.png" alt="post pic" />
                                </div>
                                <div class="content">
                                    <div class="meta left">
                                        <h4>马云——我的团队凭什么</h4>Kinds:
                                        <span class="white_tags">管理</span>Author:
                                        <span class="white_tags">张和悦</span>
                                    </div>
                                    <div class="post_date">
                                        <span class="day">1</span>
                                        <span class="month">January 2015</span>
                                    </div>
                                    <div class="clear"></div>
                                    <p>马云如此说“就像我一直说的，我不是公司的英雄。如果我看起来像，那是因为我们的团队造就了我，不是我造就了团队。阿里巴巴最宝贵的财富是我们的员工，他们是我们的一切。”而阿里人能凝聚一起，也是因为马云的团队哲学......</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>                               
                            </div>
                            <div class="row">
                                <div class=" span12">
                                    <div style="height:1px; border-bottom:1px solid #453e42;"></div>
                                </div>
                            </div>
							
							<div class="tab_review">
                                <div class="review_image_right">
                                    <img src="content/images/1-4/d3.jpg" alt="post pic" />
                                </div>
                                <div class="content">
                                    <div class="meta left">
                                        <h4>慢生活，快生意</h4>Kinds:
                                        <span class="white_tags">管理</span>Author:
                                        <span class="white_tags">刘琼雄、方建华</span>
                                    </div>
                                    <div class="post_date">
                                        <span class="day">1</span>
                                        <span class="month">January 2015</span>
                                    </div>
                                    <div class="clear"></div><p>
茵曼——国内成长最快的互联网原创女装品牌，从成立至今，茵曼其实是在做一个没有现成模式、没有可借鉴对象的事业。从定位“棉麻艺术家”到坚持‘互联网时代小即是大，大或变小“的创业理念，茵曼不断设计出令顾客尖叫的高性价比商品，长期稳居天猫女装TOP3以内，并且创造了一天把生意做过亿的销售奇迹......只要照着做，就能成功。</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                            </div>
                        </div>
						
                        <div class="tab_content" id="tab2">
                            <div class="heading">
                                <h3>每周热门榜</h3>
                            </div>
                             <div class="row spotlight">
                                <div class="span3">
                                    <img class="round_image" src="content/images/1-4/17.jpg" alt="celebrities"/>
                                    <h4>大冰——乖，摸摸头</h4>
                                    <p>真实的故事自有万钧之力，本书讲述了12个真实的故事。你我迤逦人世间，每个人都需要被善意地摸摸头，
不论你晴朗或是阴霾，低谷期还是巅峰期，愿你永远被这个世间的善意所护持。善良是一种天赋，善意是一份选择。</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                                <div class="span3">
                                    <img class="round_image" src="content/images/1-4/4.jpg" alt="celebrities" />
                                    <h4>陈谌——南极姑娘</h4>
                                    <p>《南极姑娘》不仅仅是一本书，这是一份礼物，送给天下有梦的人、有爱的人、有伤的人。如果现实冰冷残酷，让我们在童话里再爱一次。如果世界复杂纷扰，让想象力带领我们突围，去到任何纯真的远方......</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                                <div class="span3">
                                    <img class="round_image" src="content/images/1-4/10.jpg" alt="celebrities"/>
                                    <h4>龙应台——目送</h4>
                                    <p>我们拼命地学习如何成功冲刺一百米，但是没有人教过我们：你跌倒时，怎么跌得有尊严；心像玻璃一样碎了一地时候，怎么收拾......时间是一只藏在黑暗中的温柔的手,在你一出神一恍惚之间,物走星移。</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                                <div class="span3">
                                    <img class="round_image" src="content/images/1-4/24.jpg" alt="celebrities"/>
                                    <h4>刘世英，彭征——马云正传</h4>
                                    <p>身材矮小的马云，却是这个世界上最大的互联网市场中的大人物。短短15年间，他从英语教师成长为互联网大亨，并带领阿里巴巴成为全世界最大的电子商务平台的经历，折射出中国互联网的崛起和发展历程。</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
						
                        <div class="tab_content" id="tab3">
                           <div class="heading">
                                <h3>最佳人气榜</h3>  
                            </div>
                            <div class="tab_review">
                                <div class="review_image_right">
                                    <img src="content/images/1-4/m1.png" alt="post pic" />
                                </div>
                                <div class="content">
                                    <div class="meta left">
                                        <h4>青春</h4>Kinds:
                                        <span class="white_tags">文学</span>Author:
                                        <span class="white_tags">韩寒</span>
                                    </div>
                                    <div class="post_date">
                                        <span class="day">1</span>
                                        <span class="month">March 2013</span>
                                    </div>
                                    <div class="clear"></div>
                                    <p>韩寒最畅销杂文集《青春》，全书收2011年创作的杂文53篇。特别收录韩寒对于中国年内重大活动和事件的精辟言论，畅谈自我的叛逆与期许。含名篇《青春》《倒钩案》《荆州挟尸要价》《城市，让生活更糟糕》等。作为一位率性敢言的年轻人，韩寒保有真诚，所思所写出于平凡生活的体会，尤其在《青春》一篇中娓娓道出疼惜同辈年轻人的心......万千世事，且看未满三十岁的无忌“寒言”</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="row">
                                <div class=" span12">
                                    <div style="height:1px; border-bottom:1px solid #453e42;"></div>
                                </div>
                            </div>
							
							<div class="tab_review">
                                <div class="review_image_left">
                                    <img src="content/images/1-4/m2.jpg" alt="post pic" />
                                </div>
                                <div class="content">
                                    <div class="meta left">
                                        <h4>泰国异闻录</h4>Kinds::
                                        <span class="white_tags">小说</span>Author:
                                        <span class="white_tags">羊行屮</span>
                                    </div>
                                    <div class="post_date">
                                        <span class="day">1</span>
                                        <span class="month">May 2014</span>
                                    </div>
                                    <div class="clear"></div>
                                    <p>泰国，古称“暹罗”，是一个充满着神秘色彩的古老国度。
南瓜和月饼二人为完成学业，远赴遥远的泰国留学。在这个神奇的国度里，他们还没来得及享受美好的留学生活，便被卷入了一桩匪夷所思的事件中：飞机上覆盖着美丽皮囊的人皮蛊女、留学生宿舍里若隐若现的蛇灵、旅途里中人迹罕至的原始森林、古老村寨中的双头蛇神......</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="row">
                                <div class=" span12">
                                    <div style="height:1px; border-bottom:1px solid #453e42;"></div>
                                </div>
                            </div>
							
							<div class="tab_review">
                                <div class="review_image_right">
                                    <img src="content/images/1-4/m3.jpg" alt="post pic" />
                                </div>
                                <div class="content">
                                    <div class="meta left">
                                        <h4>高智商生长</h4>Kinds::
                                        <span class="white_tags">成功励志</span>Author:
                                        <span class="white_tags">杨文宇、李鹏</span>
                                    </div>
                                    <div class="post_date">
                                        <span class="day">1</span>
                                        <span class="month">November 2014</span>
                                    </div>
                                    <div class="clear"></div>
                                    <p>人生成长的关键，也许就是遇到一个人，他引导你走了一条正确的路；或是遇到一件事，它激活了你的思维，带来了你所正在寻找的光明？
这本书将教会你如何成长，你会知道，真正的成长，也许并不在于拥有的学问、才华和技能是否比别人多，而是能否成为一个有品格、有担当、有胸怀的人，能否以阳光的心态，去面对无限的、未知的世界？
									</p>
                                    <div class="button button_shadow">
                                        <a class="button2 button_arrow_right" href="#">Continue Reading</a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
						
                        <div class="tab_content" id="tab4"> 
						<div class="mosaic_gallery" style="background-image:url(content/images/musaic/musaic_gallery.jpg)">
                                <a href="#" class="tile row1 col1"></a>
                                <a href="#" class="tile row1 col2"></a>
                                <a href="#" class="tile row1 col3"></a>
                                <a href="#" class="tile row1 col4"></a>
                                <a href="#" class="tile row1 col5"></a>
                                <a href="#" class="tile row1 col6"></a>
                                <a href="#" class="tile tilex2 row1 col7"></a>
                                <a href="#" class="tile row1 col9"></a>
                                <a href="#" class="tile tilex3 row1 col10"></a>
                                <a href="#" class="tile row1 col13"></a>
                                <a href="#" class="tile row2 col1"></a>
                                <a href="#" class="tile tilex3 row2 col2"></a>
                                <a href="#" class="tile row2 col5"></a>
                                <a href="#" class="tile row2 col6"></a>
                                <a href="#" class="tile row2 col9"></a>
                                <a href="#" class="tile row2 col13"></a>
                                <a href="#" class="tile row3 col1"></a>
                                <a href="#" class="tile row3 col5"></a>
                                <a href="#" class="tile tilex3 row3 col6"></a>
                                <a href="#" class="tile row3 col9"></a>
                                <a href="#" class="tile row3 col13"></a>
                                <a href="#" class="tile row4 col1"></a>
                                <a href="#" class="tile row4 col5"></a>
                                <a href="#" class="tile row4 col9"></a>
                                <a href="#" class="tile row4 col10"></a>
                                <a href="#" class="tile row4 col11"></a>
                                <a href="#" class="tile row4 col12"></a>
                                <a href="#" class="tile row4 col13"></a>
                                <a href="#" class="tile row5 col1"></a>
                                <a href="#" class="tile row5 col2"></a>
                                <a href="#" class="tile row5 col3"></a>
                                <a href="#" class="tile row5 col4"></a>
                                <a href="#" class="tile row5 col5"></a>
                                <a href="#" class="tile row5 col9"></a>
                                <a href="#" class="tile row5 col10"></a>
                                <a href="#" class="tile row5 col11"></a>
                                <a href="#" class="tile row5 col12"></a>
                                <a href="#" class="tile row5 col13"></a>
                            </div>
                            <br />
                            <br />                                              
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div id="main">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div class="separator2 separator_title">
                            <span>新书上架</span>
                        </div>
                    </div>
                </div>
                <div class="top_stories row">
                    <div class="span3">
                        <img class="round_image" src="content/images/1-4/27.jpg" alt="Example image" />
                        <h4 class="colored">礼物</h4>
                        <p>高情商生长，才是让人生逐渐完美的生长路径，让成长中的你，变成一个有温度、懂情感、会思考的优秀的人。?
高情商生长，才会让你与他人、与世界相处时不彷徨，不犹豫；一个人独处时不慌张，不孤独。?</p>
                        <div class="button button_shadow">
                            <a href="#" class="button1 button_arrow_right">Read More</a>
                        </div>
                    </div>
                    <div class="span3">
                        <img class="round_image" src="content/images/1-4/16.jpg" alt="Example image" />
                        <h4 class="colored">内在孩子的潜在优势</h4>
                        <p>本书作者以智慧和科学并用，将内向孩子从零岁到青少年，从家庭、学校到社交生活之间，所遇到的种种教养问题，提出最细腻完整的实用对策。
						现在，就让玛蒂．兰妮博士帮助你发现内向孩子的优势.......
</p>
                        <div class="button button_shadow">
                            <a href="#" class="button1 button_arrow_right">Read More</a>
                        </div>
                    </div>
                    <div class="span3">
                        <img class="round_image" src="content/images/1-4/4.jpg" alt="Example image" />
                        <h4 class="colored">南极姑娘</h4>
                        <p>南极姑娘》不仅仅是一本书，这是一份礼物，送给天下有梦的人、有爱的人、有伤的人。如果现实冰冷残酷，让我们在童话里再爱一次。如果世界复杂纷扰，让想象力带领我们突围，去到任何纯真的远方……</p>
                        <div class="button button_shadow">
                            <a href="#" class="button1 button_arrow_right">Read More</a>
                        </div>
                    </div>
                    <div class="span3">
                        <img class="round_image" src="content/images/1-4/24.jpg" alt="Example image" />
                        <h4 class="colored">马云正传</h4>
                        <p>身材矮小的马云，却是这个世界上最大的互联网市场中的大人物。短短15年间，他从英语教师成长为互联网大亨，并带领阿里巴巴成为全世界最大的电子商务平台的经历，折射出中国互联网的崛起和发展历程。</p>
                        <div class="button button_shadow">
                            <a href="#" class="button1 button_arrow_right">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
    </div>
        <div id="footer">
            <div class="container">
                <div class="widget_area">
                    <div class="row">
                        <div class="span3">
                            <div class="widget_latest_works">
                                <h4>热门作者</h4>
                                <div class="footer_separator"></div>
                                <div class="item">
                                    <a href="#"><img src="content/images/a1.jpg" alt="item 1" /><span class="title">韩寒</span><br />
                                    </a>
                                    <span class="cat">1982-9-23</span><br />
                                    <span class="counter">中国</span>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="content/images/a2.jpg" alt="item 2" /><span class="title">郭敬明</span><br />
                                    </a>
                                    <span class="cat">1983-6-6</span>
                                    <br />
                                    <span class="counter">中国</span>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="content/images/a4.jpg" alt="item 1" /><span class="title">莫言</span><br />
                                    </a><span class="cat">1955-2-17</span><br />
                                    <span class="counter">中国</span>
                                </div>
                                <div class="clear"></div>                               
                            </div>
                        </div>
                        <div class="span3">
                            <h4>作品及成就</h4>
                            <div class="footer_separator"></div>
                            <p >美国时代周刊&#8220;全球最具影响力100人&#8221;票选第二，中国80后十大杰出代表人物 ，2009年《亚洲周刊》风云人物  </p>
                            <a class="links" href="#"></a>
                            <div class="separator1"></div>
                            <p >2010年星尚大典星尚文学先锋人；2011&#8220;福布斯中国名人榜&#8221;第53名；2011年&#8220;中国作家富豪榜&#8221;第一名</p>
                            <div class="separator1"></div>
                            <p >《红高粱》《檀香刑》《丰乳肥臀》《酒国》《生死疲劳》《蛙》十月优秀作品奖,20世纪中文小说100强,大家文学奖,鼎钧双年文学奖,颂福冈亚洲文化大奖</p>
               
                        </div>
                        <div class="span3">
                           <div class="widget_latest_works">
                                <h4>名人堂</h4>
                                <div class="footer_separator"></div>
                                <div class="item">
                                    <a href="#"><img src="content/images/a3.jpg" alt="item 3" /><span class="title">胡适</span><br />
                                    </a><span class="cat">1891-12-17</span><br />
                                    <span class="counter">中国</span>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="content/images/a5.jpg" alt="item 2" />唐家三少<br />
                                    </a>
                                    <span class="cat">1981-1-10</span>
                                    <br />
                                    <span class="counter">中国</span>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="content/images/a6.jpg" alt="item 1" />弗里德里希·威廉·尼采<br />
                                    </a>1844-10-15－1900-8-25<br />
                                    德国
                                </div>
                                <div class="clear"></div>                      
                          </div>
                        </div>
                        <div class="span3">
                            <h4>作品及成就</h4>
                            <div class="footer_separator"></div>
                            <p >《中国哲学史大纲》</p>
                            <p >《白话文学史》 </p>
                            
                            <div class="separator1"></div>
                           他曾获得“中国作家富豪榜·网络作家之王”的重要奖项，是收入最高的网络作家之一。作品：《光之子》《狂神》《冰火魔厨》
                            <div class="separator1"></div>
                           德国哲学家，他的写作风格独特，经常使用格言和悖论的技巧。尼采对于后代哲学的发展影响极大，尤其是在存在主义与后现代主义上。
                        </div>
                    </div>
                </div>
                <div class="foot">
                
                    <ul class="social_icons">
                        <li><img src="images/social_facebook_hover.png" alt="facebook" class="hover" /></li>
                        <li><img src="images/social_twitter_hover.png" alt="twitter" class="hover" /></li>
                        <li><img src="images/social_google_hover.png" alt="google" class="hover" /></li>
                        <li><img src="images/social_lastfm_hover.png" alt="lastfm" class="hover" /> </li>
                        <li><img src="images/social_rss_hover.png" alt="rss" class="hover" /> </li>
                    </ul>
                </div>
                <p class="copyright">&copy; Copyright &copy; Holiday Reading  All rights reserved.</p>
            </div>
        </div>
        <a id="top_button" href="#top"></a>
        <script src="scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
        <script src="scripts/jquery.nivo.slider.pack.js" type="text/javascript"></script>
        <script src="scripts/superfish.js" type="text/javascript"></script>
        <script src="scripts/jquery.easing.1.3.js" type="text/javascript"></script>
        <script src="scripts/jquery.idTabs.min.js" type="text/javascript"></script>
        <script src="scripts/jquery.mosaicgallery.min.js" type="text/javascript"></script>
        <script src="scripts/custom4963.js?ver=1.1" type="text/javascript"></script>
    
</body>
</html>