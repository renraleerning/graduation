<?php
// include "../database.php";
// $qsiswa = mysqli_query($db_conn, "SELECT * FROM un_siswa");



//array Field NIlai rata2 rapot
$nama_field = array(
    '0' => "n_pai",
    '1' => "n_pkn",
    '2' => "n_bin",
    '3' => "n_mat",
    '4' => "n_sjr",
    '5' => "n_ing",
    '6' => "n_sbd",
    '7' => "n_pjok",
    '8' => "n_mulok1",
    '9' => "n_mulok2",
    '10' => "n_simdig",
    '11' => "n_eb_fisika",
    '12' => "n_adum_kimia",
    '13' => "n_ipa",
    '14' => "n_dasprog",
    '15' => "n_kk",
);

?>



<script type="text/javascript" src="chartjs/Chart.js"></script>
<script>
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["PAI", "PPKn", "B.Ind", "MTK", "Sejarah", "B. Ing", "SenBud", "PJOK", "B. Sun", "PLH", "Simdig", "Ebis / Fisika","Adum / Kimia", "IPA", "Dasprog", "Kompetensi Keahlian"],
            datasets: [{
                label: 'Rata-rata Nilai Akhir',
                // data: [12, 19.5, 3, 23, 2, 3, 12, 19, 3, 23, 2, 3],
                data: [
                    <?php
                    for ($i = 0; $i < count($nama_field); $i++) {
                        $inifield = "{$nama_field[$i]}";

                        //menghitung Rata-rata nilai
                        $qsiswa = mysqli_query($db_conn, "SELECT AVG($inifield ) AS average FROM un_siswa");
                        $kolom = mysqli_fetch_assoc($qsiswa);
                        $average = round($kolom['average']);
                        echo $average;
                        if ($i < 15) {
                            echo " ,";
                        }
                        // echo " => rata-rata : " . $inifield . "<br>";
                    }

                    ?>

                ],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 50, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(14, 255, 80 , 0.2)',
                    'rgba(218, 255, 80, 0.4)',
                    'rgba(218, 40, 0, 0.2)',
                    'rgba(164,135,50,0.2)',
                    'rgba(164,0,161,0.2)',
                    'rgba(101, 179, 121, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 50, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 50, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(14, 255, 80, 1)',
                    'rgba(218, 255, 80, 2)',
                    'rgba(218, 40, 0, 0.50)',
                    'rgba(164,135,50,0.50)',
                    'rgba(164,0,161,0.50)',
                    'rgba(101, 179 , 121, 1)',
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 50, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>
