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
		<form id="login_form1" class="form-signin" method="post" style="margin-top:70px;">
						<h3 class="form-signin-heading"><i class="icon-lock"></i> Masuk</h3>
						<input type="text" class="input-block-level" id="username" name="username" placeholder="Nomor induk" onKeyPress="return goodchars(event,'0123456789',this)" required>
						<input type="password" class="input-block-level" id="password" name="password" placeholder="Kata sandi" required>
						<button data-placement="right" title="Click Here to Sign In" id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-signin icon-large"></i> Masuk</button>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin').tooltip('show');
															$('#signin').tooltip('hide');
														});
														</script>	
														<script>
						jQuery(document).ready(function(){
						jQuery("#login_form1").submit(function(e){
								e.preventDefault();
								var formData = jQuery(this).serialize();
								$.ajax({
									type: "POST",
									url: "login.php",
									data: formData,
									success: function(html){
									if(html=='true')
									{
									$.jGrowl("Loading File Please Wait......", { sticky: true });
									$.jGrowl("Selamat datang di LMS SMA Perguruan Buddhi", { header: 'Akses diterima' });
									var delay = 1000;
										setTimeout(function(){ window.location = 'dasboard_teacher.php'  }, delay);  
									}else if (html == 'true_student'){
										$.jGrowl("Selamat datang di LMS SMA Perguruan Buddhi", { header: 'Akses diterima' });
									var delay = 1000;
										setTimeout(function(){ window.location = 'student_notification.php'  }, delay);  
									}else
									{
									$.jGrowl("Cek nama pengguna dan kata sandi", { header: 'Gagal masuk' });
									}
									}
								});
								return false;
							});
						});
						</script>

			</form>
			<div id="button_form" class="form-signin" >
			
			<h3 class="form-signin-heading"> Daftar</h3>
			<hr>
				<button data-placement="top" title="Daftar sebagai murid" id="signin_student" onclick="window.location='signup_student2.php'" id="btn_student" name="login" class="btn btn-info" type="submit">Murid</button>
				<div class="pull-right">
					<button data-placement="top" title="Daftar sebagai guru" id="signin_teacher" onclick="window.location='signup_teacher2.php'" name="login" class="btn btn-info" type="submit">Guru</button>
				</div>
			</div>												
			
						
			<div id="button_form" class="form-signin" >
			<h3 class="form-signin-heading"> Lupa kata sandi?</h3>
			<hr>
				<h3 class="form-signin-heading"><i class="icon-edit"></i> Klik disni</h3>
				<button data-placement="top" title="Murid" id="signin_student" onclick="window.location='signup_student.php'" id="btn_student" name="login" class="btn btn-info" type="submit">Murid</button>
				<div class="pull-right">
					<button data-placement="top" title="Guru" id="signin_teacher" onclick="window.location='signup_teacher.php'" name="login" class="btn btn-info" type="submit">Guru</button>
				</div>
			</div>
			
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin_student').tooltip('show'); $('#signin_student').tooltip('hide');
														});
														</script>	
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin_teacher').tooltip('show'); $('#signin_teacher').tooltip('hide');
														});
														</script>	