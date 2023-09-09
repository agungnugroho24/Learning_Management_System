<div class="span3" id="sidebar">
	<img id="avatar" src="admin/<?php echo $row['location']; ?>" class="img-polaroid">
			<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
				<li class=""><a href="dasboard_teacher.php"><i class="icon-chevron-right"></i><i class="icon-chevron-left"></i>&nbsp;Kembali</a></li>
				<li class=""><a href="my_students.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;Muridku</a></li>
				<li class=""><a href="tambahforumguru2.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-file"></i>&nbsp;Forum</a></li>
				<li class=""><a href="downloadable.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-download"></i>&nbsp;Materi yang bisa diunduh</a></li>
				<li class=""><a href="assignment.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-book"></i>&nbsp;Tugas</a></li>
				<li class="active"><a href="announcements.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-info-sign"></i>&nbsp;Pengumuman</a></li>
				<li class=""><a href="class_calendar.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-calendar"></i>&nbsp;Kalender kelas</a></li>
			    <li class=""><a href="class_quiz.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-list"></i>&nbsp;Ulangan</a></li>
			</ul>
			<?php include('search_other_class.php'); ?>		
</div>

