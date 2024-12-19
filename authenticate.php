
<?php

if(isset($_POST['user']))
{
$user =$_POST['user'];
$password= $_POST['pass'];
if($user=='admin'&&$password='12345')
{

header('location:'."viewSearch.php");
}

else
{
?>
<script type="text/javascript">
alert("INVALID USERNAME OR PASSWORD")
</script>

<?php
}
}
?>
