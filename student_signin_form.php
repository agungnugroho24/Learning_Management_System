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
			<form id="signin_student" class="form-signin" method="post">
			<h3 class="form-signin-heading"><i class="icon-lock"></i> Ubah </h3>
			<input type="text" class="input-block-level" id="username" name="username" onKeyPress="return goodchars(event,'0123456789',this)" placeholder="NIS" required>
			<input type="text" class="input-block-level" id="firstname" name="firstname" placeholder="Nama depan" required>
			<input type="text" class="input-block-level" id="lastname" name="lastname" placeholder="Nama belakang" required>
			<label>Kelas</label>
			<select name="class_id" class="input-block-level span5">
				<option></option>
				<?php
				$query = mysql_query("select * from class order by class_name ")or die(mysql_error());
				while($row = mysql_fetch_array($query)){
				?>
				<option value="<?php  echo $row['class_id']; ?>"><?php echo $row['class_name']; ?></option>
				<?php
				}
				?>
			</select>
			<input type="password" class="input-block-level" id="password" name="password" placeholder="Kata sandi" required>
			<input type="password" class="input-block-level" id="cpassword" name="cpassword" placeholder="Ulangi kata sandi" required>
			<button id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-check icon-large"></i> Ubah</button>
			</form>
			
		
			
			<script>
			jQuery(document).ready(function(){
			jQuery("#signin_student").submit(function(e){
					e.preventDefault();
						
						var password = jQuery('#password').val();
						var cpassword = jQuery('#cpassword').val();
					
					
					if (password == cpassword){
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "student_signup.php",
						data: formData,
						success: function(html){
						if(html=='true')
						{
						$.jGrowl("Selamat datang di LMS SMA Perguruan Buddhi", { header: 'Kata sandi berhasil diubah' });
						var delay = 2000;
							setTimeout(function(){ window.location = 'dashboard_student.php'  }, delay);  
						}else if(html=='false'){
							$.jGrowl("Murid belum terdaftar, silahkan cek kembali", { header: 'Pendaftaran gagal' });
						}
						}
						
						
					});
			
					}else
						{
						$.jGrowl("Murid tidak ada di dalam database", { header: 'Pendaftaran gagal' });
						}
				});
			});
			</script>

			
		
			<a onclick="window.location='index.php'" id="btn_login" name="login" class="btn" type="submit"><i class="icon-signin icon-large"></i> Klik disini untuk masuk</a>
			
			
			
				
		
					