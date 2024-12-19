

<?php

$conn=mysql_connect("localhost","root","") or die("Unable not connect To Repository");
$db=mysql_select_db("security") or die("Error selecting Database");


$sql=mysql_query("SELECT * FROM sitename");

$count=mysql_num_rows($sql);

if($count>0)

while($s=mysql_fetch_array($sql))
{
?>

							  <option value="<?php echo $s['emp_site_name'];?>"><?php echo $s['emp_site_name'];?></option>
<?php
}
?> 	</select>	

