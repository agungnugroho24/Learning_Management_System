<?php
session_start();
include '../dbcon.php';
    $query = mysql_query("select * from  activity_log");
	$no = 1;
    $data = mysql_fetch_array($query)
?>
<html>
<head>
    <title>Print Formulir</title>
    <link rel='stylesheet' href='gaya.css'>

<html>
<head>
    <title>Print user log</title>
    <link rel='stylesheet' href='gaya.css'>
    <?php 
    echo "<script type='text/javascript'>javascript:window.print()</script>";
    ?>
</head>
<body>
<!-- tabel body -->
<table border='0' cellpadding='3' cellspacing='1' width='700' style='font-family: "time news roman"; font-size: 12px; background: #ffffff;'>
    <!-- kop -->
    <tr><td colspan='3'><?php include 'kop.php' ?></td></tr>
    <!-- kop -->
    <tr>
        <td colspan='3' align='center'></td>
    </tr>
    <tr>
        <td width='20'><!-- margin kanan --><br></td>
        <td>
        <!-- Bagian Tengah / Isi -->
            <!-- tabel kontent -->
			<table align="center">
			<td align="center"><font size='4'><b>Aktivitas pengguna</b></font></br></td>
			</table>&nbsp;
            <table cellpadding="0" cellspacing="0" border="1" class="table" id="example" style="width:1200px:">
									<thead style="width:1200px:">
								    <tr style="width:1200px:">
										<th width="250px">Tanggal masuk</th>
                                            <th width="250px">Tanggal keluar</th>
                                            <th width="150px">Nama pengguna</th>
											<th width="150px">Nama</th>
											<th width="150px">Kelas</th>
										
                                    </tr>
										</thead>
										<tbody>
											
											<?php
													$user_query = mysql_query("select * from log left join student on student.student_id = log.student_id left join class on class.class_id = student.class_id order by user_log_id DESC")or die(mysql_error());
													while($row = mysql_fetch_array($user_query)){
													$id = $row['user_log_id'];
													?>
									
												<tr>
											
												<td align="center"><?php echo $row['login_date']; ?></td>
												<td align="center"><?php echo $row['logout_date']; ?></td>
												<td align="center"><?php echo $row['username']; ?></td>
												<td align="center"><?php echo $row['firstname']; ?> <?php echo $row['lastname']; ?></td>
												<td align="center"><?php echo $row['class_name']; ?></td>
												</tr>
												<?php } ?>   
                              
										</tbody>
									</table>
        </td>
        <td width='20'><!-- margin kiri --></td>
    </tr>
</table>   
<br><br><br>
<table style="margin-left:15px;">
	<?php $today = date("d-M-Y");?>
	<tr>
	<td>
     Tangerang, <?php echo $today?>
	</td>
	</tr>
	<tr>
	<td align="center">
	Kepala Sekolah
	</td>
	</tr>
	<tr>
	<td><br><br><br><br><br>
	____________________
	</td>
	</tr>
	</table>
		<table style="margin-left:500px; margin-top:-135px;">
	<tr>
	<td align="center">
	Petugas
	</td>
	</tr>
	<tr>
	<td><br><br><br><br><br>
	____________________
	</td>
	</tr>
	</table>
</body>
    
</html>