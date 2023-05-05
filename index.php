<?php
include "header.php";
// $qconfig = mysqli_query($db_conn, "SELECT * FROM un_konfigurasi");
// $hsl = mysqli_fetch_array($qconfig);
?>

<div class="container">
<div class="align text-center" >

	<img src="img/<?= $hsl['logo'] ?>" style="width: 120px;float: none;margin-top: 40px; margin-Bottom: 17px;"> 
	<br>
	<label style=" font-size:40px;">
		PENGUMUMAN KELULUSAN
	</label><br>
	<label style=" font-size:20px;">
		<?= $hsl['sekolah'] ?> <br>
		<?php 
		echo "TAHUN PELAJARAN ".$tahun_ajaran;
		?>
	</label>
</div>

	<!-- countdown -->

	<div id="clock" class="lead"></div>

	<div id="xpengumuman">
		<?php
		if (isset($_POST['submit'])) {
			//tampilkan hasil queri jika ada
			$nomor = mysqli_real_escape_string($db_conn, $_POST['nomor']);
			$no_ujian = stripslashes($nomor);

			$hasil = mysqli_query($db_conn, "SELECT * FROM un_siswa WHERE no_ujian='$no_ujian'");
			if (mysqli_num_rows($hasil) > 0) {
				$data = mysqli_fetch_array($hasil);

		?>
				<table class="table table-bordered table-responsive table-hover ">
					<tr class="">
						<td colspan="2" class="text text-center "><label class=" navmenu-text">Data Siswa</label></td>
					</tr>

					<tr>
						<td>NISN</td>
						<td><?= htmlspecialchars($data['no_ujian']); ?></td>
					</tr>
					<tr>
						<td>Nama Siswa</td>
						<td><?= htmlspecialchars($data['nama']); ?></td>
					</tr>
					<tr>
						<td>Kelas</td>
						<td><?= htmlspecialchars($data['kls']); ?></td>
					</tr>
				</table>
				<table class="table table-bordered table-responsive table-hover">
					<thead>
						<tr>
							<th  style="vertical-align: middle; text-align: center;">No</th>
							<th  style="vertical-align: middle; text-align: center;">Mata Pelajaran</th>
							<th  style="vertical-align: middle; text-align: center;">Nilai Ujian Sekolah</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="3"> <b> Kelompok A / Muatan Nasional</b></td>

						</tr>
						<tr>
							<!-- // htmlspecialchars() digunakan agar tidak mengeksekusi kode html-->
							<td class="text-center">1. </td>
							<td>Pendidikan Agama dan Budi Pekerti</td>
							<td class="text-center"><?= htmlspecialchars($data['n_pai']); ?></td>
						</tr>
						<tr>
							<td class="text-center">2. </td>
							<td>Pendidikan Pancasila dan Kewarganegaraan</td>
							<td class="text-center"><?= htmlspecialchars($data['n_pkn']); ?></td>
						</tr>
						<tr>
							<td class="text-center">3. </td>
							<td>Bahasa Indonesia</td>
							<td class="text-center"><?= htmlspecialchars($data['n_bin']); ?></td>
						</tr>
						<tr>
							<td class="text-center">4. </td>
							<td>Matematika</td>
							<td class="text-center"><?= htmlspecialchars($data['n_mat']); ?></td>
						</tr>
						<tr>
							<td class="text-center">5. </td>
							<td>Sejarah Indonesia</td>
							<td class="text-center"><?= htmlspecialchars($data['n_sjr']); ?></td>
						</tr>
						<tr>
							<td class="text-center">6. </td>
							<td>Bahasa Inggris dan Bahasa Asing Lainnya</td>
							<td class="text-center"><?= htmlspecialchars($data['n_ing']); ?></td>
						</tr>
						<tr>
							<td colspan="3"> <b> Kelompok B / Muatan Kewilayahaan</b></td>
						</tr>
						<tr>
							<td class="text-center">1. </td>
							<td>Seni Budaya </td>
							<td class="text-center"><?= htmlspecialchars($data['n_sbd']); ?></td>
						</tr>
						<tr>
							<td class="text-center">2. </td>
							<td>Pendidikan Jasmani, Olah Raga, dan Kesehatan</td>
							<td class="text-center"><?= htmlspecialchars($data['n_pjok']); ?></td>
						</tr>
						<tr>
							<td rowspan="3" class="text-center">3. </td>
							<td>Muatan Lokal</td>
							<td class="text-center"></td>
						</tr>
						<tr>	
							<td>a. Bahasa Sunda</td>
							<td class="text-center"><?= htmlspecialchars($data['n_mulok1']); ?></td>
						</tr>
						<tr>	
							<td>b. Pendidikan Lingkungan Hidup</td>
							<td class="text-center"><?= htmlspecialchars($data['n_mulok2']); ?></td>
						</tr>
						<tr>
							<td colspan="3"> <b> Kelompok C / Muatan Peminatan/Kompetensi Keahlian</b></td>

						</tr>
						<tr>
							<!-- // htmlspecialchars() digunakan agar tidak mengeksekusi kode html-->
							<td class="text-center">1. </td>
							<td>Simulasi dan Komunikasi Digital</td>
							<td class="text-center"><?= htmlspecialchars($data['n_simdig']); ?></td>
						</tr>
						<?php 
						if (substr($data['kls'],0,7) == "XII RPL") { ?>
						<tr>
							<td class="text-center">2. </td>
							<td>Fisika</td>
							<td class="text-center"><?= htmlspecialchars($data['n_eb_fisika']); ?></td>
						</tr>
						<tr>
							<td class="text-center">3. </td>
							<td>Kimia</td>
							<td class="text-center"><?= htmlspecialchars($data['n_adum_kimia']); ?></td>
						</tr>
						<tr>
							<td class="text-center">4. </td>
							<td>Dasar Program Keahlian</td>
							<td class="text-center"><?= htmlspecialchars($data['n_dasprog']); ?></td>
						</tr>
						<tr>
							<td class="text-center">5. </td>
							<td>Kompetensi Keahlian</td>
							<td class="text-center"><?= htmlspecialchars($data['n_kk']); ?></td>
						</tr>
						<?php } else { ?>
							<tr>
							<td class="text-center">2. </td>
							<td>Ekonomi Bisnis</td>
							<td class="text-center"><?= htmlspecialchars($data['n_eb_fisika']); ?></td>
						</tr>
						<tr>
							<td class="text-center">3. </td>
							<td>Administrasi Umum</td>
							<td class="text-center"><?= htmlspecialchars($data['n_adum_kimia']); ?></td>
						</tr>
						<tr>
							<td class="text-center">4. </td>
							<td>IPA</td>
							<td class="text-center"><?= htmlspecialchars($data['n_ipa']); ?></td>
						</tr>
						<tr>
							<td class="text-center">5. </td>
							<td>Dasar Program Keahlian</td>
							<td class="text-center"><?= htmlspecialchars($data['n_dasprog']); ?></td>
						</tr>
						<tr>
							<td class="text-center">6. </td>
							<td>Kompetensi Keahlian</td>
							<td class="text-center"><?= htmlspecialchars($data['n_kk']); ?></td>
						</tr>

						<?php } ?>
						<!-- <tr>
								<td colspan="4">Kelompok C</td>
							</tr>
							<tr>
								<td class="text-center">1. </td>
								<td>Kejuruan</td>
								<td class="text-center"><?= htmlspecialchars($data['n_kejuruan']); ?></td>
								<td class="text-center "><?= htmlspecialchars($data['us_kejuruan']); ?></td>
							</tr> -->
						<tr>
							<td colspan="2"class="text-center"> <b>Rata-rata </b></td>
							<td class="text-center"><strong><?= htmlspecialchars($data['rata2']);?></strong></td>
						</tr>
					</tbody>
				</table>
				<?php
					$no_ujian = base64_encode(base64_encode(htmlspecialchars($data['no_ujian'])));
					// $noujian = base64_encode("no_ujian");
				if ($data['status'] == 1) { ?>
					<form method="post" action="print/" target="_blank">
						<center> 
						<div class="alert alert-success" role="alert">
							<b>SELAMAT !</b> Anda dinyatakan <b>L U L U S</b>
							<br><i>Download Surat Keterangan Lulus :</i> &nbsp; &nbsp; <br>
							<input type="hidden" name="nomor" value="<?=$no_ujian;?>">
							<!-- <Button class="btn-primary" type="submit" name="submit"><i class="fa fa-print"> </i> &nbsp; CETAK </Button> -->
							<a href="download.php?file=<?= htmlspecialchars($data['kls']."_".$data['nama']); ?>_0001.pdf" style="margin-top:5px;" class="btn btn-default btn-sm" type="button" name="download"><i class="fa fa-cloud-download"> </i> &nbsp; DOWNLOAD </a>



						</div> 
						</center>
					</form>
						<center>
							<a href="./"><button class="btn btn-primary btn-sm">KEMBALI</button></a>
						</center> 
						<br>

				<?php } else {
					echo '<div class="alert alert-danger" role="alert"><strong>MAAF !</strong> Anda dinyatakan TIDAK LULUS.</div>';
					echo	'<center><a href="./"><button class="btn btn-primary">KEMBALI</button></a></center> <br>';
				}
				?>

			<?php
			} else {
				echo '<div class="alert alert-warning"> <font color="#F0F8FF" >  NISN yang anda masukan tidak ditemukan !<br>  Periksa kembali NISN anda.</font></div>';
				echo '<br><center><a href="./"><button class="btn btn-primary">KEMBALI</button></a></center> <br>';
				echo '<center><img height="240px" src="img/notfound.gif" alt="data tidak di temukan" title="data tidak di temukan"></center>';
				//tampilkan pop-up dan kembali tampilkan form
			}
		} else {
			//tampilkan form input nomor ujian
			?>
		
		<center style="float: top;font-size: 16px;color: #008000"><p>Masukkan NISN pada kolom yang disediakan</p></center>
		
		<form method="post">
				<div class="input-group" class=" alert-dismissable">
					<!-- <input type="text" name="nomor" class="form-control" style=" font-size:20px;" data-mask="<?= $nopesformat; ?>" placeholder="Nomor Ujian" required> -->
					<input type="text" name="nomor" class="form-control" style=" font-size:20px;" placeholder="Nomor Induk Siswa Nasional (NISN)" required>
					<span class="input-group-btn">
						<button class="btn btn-primary" type="submit" name="submit">
							C E K !
						</button>
					</span>
				</div>
			</form>
		<?php
		}
		?>
	</div>
</div><!-- /.container -->



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jasny-bootstrap.min.js"></script>
<script type="text/javascript">
	var skrg = Date.now();
	$('#clock').countdown("<?= $tgl_pengumuman; ?>", {
			elapse: true
		})
		.on('update.countdown', function(event) {
			var $this = $(this);
			if (event.elapsed) {
				$("#xpengumuman").show();
				$("#clock").hide();
			} else {
				$this.html(event.strftime(
					'<center> Pengumuman dapat dilihat pada waktu : <?= $waktu; ?> <br><b><div class="alert alert-warning"><span>%D Hari %H Jam %M Menit %S Detik</span> lagi <center></div></b>'));
				$("#xpengumuman").hide();
			}
		});
</script>

<?php
include "footer.php"
?>