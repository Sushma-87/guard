
          <table class="table table-striped table-hover table-bordered pull-left" id="data-table">
            <thead>
              <tr>
                <th>Guard ID.</th>
                <th>Name </th>

                <th> Site Name</th>
                <th>Designation</th>
                <th>Account No.</th>
                <th> ESIC No.</th>
                <th> PF NO. </th>
                <th>Workable Days</th>
                <th>Rate of wages</th>
                <th>Total Attendace</th>
                <th>Wages Payable </th>
                <th>OT Attend</th>
                <th>OT Rate per Day</th>
                <th>OT Amount</th>
                <th>Total Amount</th>
                <th>P.F</th>
                <th>ESIC </th>
                <th>Total deduction </th>
                <th> Net Payable</th>
                <th>Sign Of Employee</th>

              </tr>
            </thead>
                              <tbody>

                         <?php
						 $conn=mysql_connect("localhost","root","") or die("Unable not connect To Repository");
$db=mysql_select_db("security") or die("Error selecting Database");
						 $sql=mysql_query("SELECT * FROM guard_info,monthlyupdate,month");

                         $no=1;
                                 while($row= mysql_fetch_array($sql))
{?>
                           <tr class="gradeX">
                          <td><?php echo $no?></td>
                          <td><?php echo $row['emp_name']; ?></td>
                          <td><?php echo $row['emp_zone'];?></td>
                              <td><?php echo  $row['emp_designation'];?></td>
                             <td ><?php echo $row['emp_account_no'];?></td>
                            <td><?php  echo $row['emp_esic_no'];?></td>
                           <td><?php echo $row['emp_pf_no'];?></td>
                           <td>26</td>

<?php

$rwages =$row['emp_rwages'];
$rdays =$row['emp_wdays'];
$odays= $row['emp_odays'];
$owages=$row['emp_owages'];
$total_payble = $rwages*$rdays;
$overtime_payble = $owages*$odays;
$complete_payble = $total_payble+$overtime_payble;
$pf_amount = round((10.6/100)*$complete_payble,2);
$esic_amount =round((1.74/100)*$complete_payble,2);
$total_deduction = $pf_amount+$esic_amount;
$payble = $complete_payble-$total_deduction;
?>
                           <td><?php echo  $row['emp_rwages'];?></td>
                           <td><?php echo $row['emp_wdays'];?></td>
                           <td><?php echo $total_payble;?></td>
                           <td><?php echo $row['emp_odays'];?></td>
                           <td><?php echo  $row['emp_owages'];?></td>
                           <td><?php echo $overtime_payble;?></td>
                           <td><?php echo  $complete_payble;?></td>
                           <td><?php echo $pf_amount;?></td>
                           <td><?php echo $esic_amount;?></td>
                           <td><?php echo $total_payble;?></td>
                           <td><?php echo $payble;?></td>
                           <td></td>

                 </tr>
                        <?php ++$no; }?>
              </tbody>
          </table>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>
</div>
