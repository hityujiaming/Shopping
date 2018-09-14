<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>产品分类</title>
<link href="css/jquery.treemenu.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script> 
<script type="text/javascript" src="js/jquery.treemenu.js"></script> 
<style>
*{list-style:none;border:none;}
body{font-family:Arial;background-color:#FFFFFF;}
.tree {  color:#46CFB0;width:80px;margin:100px auto;}
.tree li,
.tree li > a,
.tree li > span {
    padding: 4pt;
    border-radius: 4px;
}

.tree li a {
   color:#46CFB0;
    text-decoration: none;
    line-height: 20pt;
    border-radius: 4px;
}

.tree li a:hover {
    background-color: #34BC9D;
    color: #fff;
}

.active {
    background-color: #34495E;
    color: white;
}

.active a {
    color: #fff;
}

.tree li a.active:hover {
    background-color: #34BC9D;
}
</style>
</head>

<body>
<ul class="tree"  id="tree">
<!--   <li><a href="">Home</a></li> -->
  <li><span>Category</span>
    <ul>
      <li><a href="#">jQuery</a>
        <ul>
          <li><a href="#">jQuery</a></li>
          <li><a href="bg-right-pic.jsp">jQuery UI</a></li>
          <li><a href="#">jQuery Mobile</a></li>
        </ul>
      </li>
      <li><a href="#">JavaScript</a>
        <ul>
          <li><a class="active" href="#">AngularJS</a></li>
          <li><a href="#">React</a></li>
          <li><a href="#">Backbone</a></li>
        </ul>
      </li>
      <li><a href="#suits">Golang</a></li>
    </ul>
  </li>
  <li><a href="#about">About</a>
    <ul>
      <li><a href="#">Contact</a></li>
      <li><a href="#">Blog</a></li>
      <li><a href="#">Jobs</a>
        <ul>
          <li><a href="#jobs1">Job 1</a></li>
          <li><a href="#jobs2">Job 2</a></li>
          <li><a href="#jobs3">Job 3</a></li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
<script>
$(function(){
        $(".tree").treemenu({delay:300}).openActive();
    });
$(function(){
    $("#tree li").click(function(){
        $(this).find("a").addClass("active").end().siblings().find("a").removeClass("active");
    });
});
</script>


</body>
</html>
