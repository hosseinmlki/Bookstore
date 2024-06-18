<html>
<link rel="stylesheet" href="style.css">
<body>
<header>
<blockquote>
    <a href="index.php"><img src="image/logo.png"></a>
</blockquote>
</header>
<blockquote>
<div class="container" dir="rtl">
<center><h1>ورود</h1></center>
<form action="checklogin.php" method="post">
    نام کاربری<br><input type="text" name="username"/>
    <br><br>
    رمز ورود<br><input type="password" name="pwd" />
    <br><br>
    <input class="button" type="submit" value="ورود"/>
    <input class="button" type="button" name="cancel" value="لغو عملیات" onClick="window.location='index.php';" />
</form>
</div>
<blockquote>
<?php
if(isset($_GET['errcode'])){
    if($_GET['errcode']==1){
        echo '<span style="color: red;">نام کاربری یا پسورد نامعتبر</span>';
    }elseif($_GET['errcode']==2){
        echo '<span style="color: red;">لطفا وارد شوید</span>';
    }
}

?>
</body>
</html>