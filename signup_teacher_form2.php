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
			<form id="signin_teacher" class="form-signin" method="post" action="teacher_signup2.php" enctype="multipart/form-da">
					<h3 class="form-signin-heading"><i class="icon-lock"></i> Daftar </h3>
					<input type="text" class="input-block-level"  name="firstname" placeholder="Nama depan" onKeyPress="return goodchars(event,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',this)" required>
					<input type="text" class="input-block-level"  name="lastname" placeholder="Nama belakang" onKeyPress="return goodchars(event,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',this)" required>
					<label>Pilihan</label>
					<select name="department_id" class="input-block-level span12">
						<option></option>
						<?php
						$query = mysql_query("select * from department order by department_name ")or die(mysql_error());
						while($row = mysql_fetch_array($query)){
						?>
						<option value="<?php echo $row['department_id'] ?>"><?php echo $row['department_name']; ?></option>
						<?php
						}
						?>
					</select>
					<input type="text" class="input-block-level" id="username" name="username" placeholder="Nomor induk" onKeyPress="return goodchars(event,'0123456789',this)" required>
					<input type="password" class="input-block-level" id="password" name="password" placeholder="Kata sandi" required>
					<input type="password" class="input-block-level" id="cpassword" name="cpassword" placeholder="Ulangi kata sandi" required>
					<button id="signin" name="submit" class="btn btn-info" type="submit"><i class="icon-check icon-large"></i> Daftar</button>
			</form>
			<a onclick="window.location='index.php'" id="btn_login" name="login" class="btn" type="submit"><i class="icon-signin icon-large"></i> Klik disini untuk masuk</a>
			
			
			
				
		
					
		