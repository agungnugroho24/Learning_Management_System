<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<script language="javascript">
function getkey(e)
{
if (window.event)
   return window.event.keyCode;
else if (e)
   return e.which;
else
   return null;
}
function goodchars(e, goods, field)
{
var key, keychar;
key = getkey(e);
if (key == null) return true;
 
keychar = String.fromCharCode(key);
keychar = keychar.toLowerCase();
goods = goods.toLowerCase();
 
// check goodkeys
if (goods.indexOf(keychar) != -1)
    return true;
// control keys
if ( key==null || key==0 || key==8 || key==9 || key==27 )
   return true;
    
if (key == 13) {
    var i;
    for (i = 0; i < field.form.elements.length; i++)
        if (field == field.form.elements[i])
            break;
    i = (i + 1) % field.form.elements.length;
    field.form.elements[i].focus();
    return false;
    };
// else return false
return false;
}
</script>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('subject_sidebar.php'); ?>
		
						<div class="span9" id="content">
		                    <div class="row-fluid">
									 <a href="add_subject.php" class="btn btn-info"><i class="icon-plus-sign icon-large"></i> Tambah subjek</a>
		                        <!-- block -->
		                        <div id="" class="block">
		                            <div class="navbar navbar-inner block-header">
		                                <div class="muted pull-left">Ubah subjek</div>
		                            </div>
		                            <div class="block-content collapse in">
									<a href="subjects.php"><i class="icon-arrow-left"></i> Kembali</a>
									
									<?php
									$query = mysql_query("select * from subject where subject_id = '$get_id'")or die(mysql_error());
									$row = mysql_fetch_array($query);
									?>
									
									    <form class="form-horizontal" method="post">
										<div class="control-group">
											<label class="control-label" for="inputEmail">Kode subjek</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['subject_code']; ?>" name="subject_code" id="inputEmail" onKeyPress="return goodchars(event,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',this)" placeholder="Kode subjek">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Judul subjek</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['subject_title']; ?>" class="span8" name="title" id="inputPassword" onKeyPress="return goodchars(event,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',this)" placeholder="Judul subjek" required>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Jumlah</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['unit']; ?>" class="span1" name="unit" id="inputPassword" onKeyPress="return goodchars(event,0123456789',this)" maxlength="1" required>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Penjelasan</label>
											<div class="controls">
													<textarea name="description" id="ckeditor_full">
													<?php echo $row['description']; ?>
													</textarea>
											</div>
										</div>
												
																		
											
										<div class="control-group">
										<div class="controls">
										
										<button name="update" type="submit" class="btn btn-info"><i class="icon-save icon-large"></i> Ubah</button>
										</div>
										</div>
										</form>
										
										<?php
										if (isset($_POST['update'])){
										$subject_code = $_POST['subject_code'];
										$title = $_POST['title'];
										$unit = $_POST['unit'];
										$description = $_POST['description'];
										
										
									
										mysql_query("update subject set subject_code = '$subject_code' ,
																		subject_title = '$title',
																		unit  = '$unit',
																		description = '$description'
																		where subject_id = '$get_id' ")or die(mysql_error());
																		
										mysql_query("insert into activity_log (date,username,action) values(NOW(),'$user_username','Edit Subject $subject_code')")or die(mysql_error());
										
										?>
										<script>
										window.location = "subjects.php";
										</script>
										<?php
										}
										
										
										?>
									
								
		                            </div>
		                        </div>
		                        <!-- /block -->
		                    </div>
		                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>

</html>