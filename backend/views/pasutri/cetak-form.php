<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\helpers\StringHelper;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use backend\models\Jenis;
use backend\models\LaporKejadian;
        $tahun = date('Y');

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ProtokolerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Cetak Rekap Laporan';
$this->params['breadcrumbs'][] = $this->title;
?>

<body onload="window.print();">
<!--<body>-->

<?php $this->beginBody() ?>

<style type="text/css">
        @media print{
            @page { margin-top: 50px; padding-left: 0px;}
            }
</style>
       
<table width="100%">
  <td>
      <div class="row">
          <div class="col-xs-12 text-center" style=" height: 80px;" >
              <table width="100%">
                    <tr>
                    <td width="82%">
                        <p style="font-size:20px;"><b>BIODATA PESERTA KURSUS PRANIKAH</b></p>
                        <p style="font-size:20px;"><b>ANGKATAN .... TAHUN 2023</b></p>
                    </tr>
                </table>
                <div style="margin-top:0px;border-bottom:3px solid black;"></div>
            </div>
      </div>
    </td>
</table>

<p> 
  <h3 align="center">&nbsp; </h3>
<body>


<!DOCTYPE html>
<html>
<head>
<title>BIODATA PESERTA KURSUS PRANIKAH</title>
</head>
<body>
<h1 align="center"></h1>
<table width="745" border="1" cellspacing="0" cellpadding="5" align="center">
<tr align="center" bgcolor="#66CC33">
<td width="174">DATA SUAMI</td>
<td width="353"></td>
<td width="232">FOTO</td>
</tr>
<tr>
<td>Nama Lengkap </td>
<td> <?= $model['pasutri_suami'] ?></td>
<td rowspan="10" align="center"><?= $model['pasutri_fotosuami'] ?> <img width="210" height="313"></td>
</tr>
<tr>
<td>NIK KTP</td>
<td> <?= $model['pasutri_suami_nik'] ?> </td>
</tr>
<tr>
<td>Tempat / Tgl Lahir</td>
<td><?= $model['pasutri_ttlsuami'] ?></td>
</tr>
<tr>
<td>Usia saat ini</td>
<td><?= $model['pasutri_suami_usia'] ?></td>
</tr>
<tr>
<td>Pendidikan terakhir</td>
<td><?= $model['pasutri_pendidikansuami'] ?></td>
</tr>
<tr>
<td>Pekerjaan saat ini</td>
<td><?= $model['pasutri_suami_pekerjaan'] ?></td>
</tr>
<tr>
<td>Alamat sesuai KTP</td>
<td><?= $model['pasutri_alamatsuami'] ?></td>
</tr>
<tr>
<td>No WA Aktif</td>
<td><?= $model['pasutri_suami_nomor_hp'] ?></td>
</tr>
<tr>
<td>Status Perkawinan</td>
<td><?= $model['pasutri_suami_statuskawin'] ?></td>
</tr>
<tr>
<td>Membaca Al-Qur'an</td>
<td><?= $model['pasutri_suami_bacaalquran'] ?></td>
</tr>
</table>
</body>


<body>
<h1 align="center"></h1>
<table width="745" border="1" cellspacing="0" cellpadding="5" align="center">
<tr align="center" bgcolor="#66CC33">
<td width="174">DATA ISTRI</td>
<td width="353"></td>
<td width="232">FOTO</td>
</tr>
<tr>
<td>Nama Lengkap </td>
<td> <?= $model['pasutri_nama'] ?></td>
<td rowspan="10" align="center"><?= $model['pasutri_fotoistri'] ?> <img width="210" height="313"></td>
</tr>
<tr>
<td>NIK KTP</td>
<td> <?= $model['pasutri_istri_nik'] ?> </td>
</tr>
<tr>
<td>Tempat / Tgl Lahir</td>
<td><?= $model['pasutri_ttl'] ?></td>
</tr>
<tr>
<td>Usia saat ini</td>
<td><?= $model['pasutri_istri_usia'] ?></td>
</tr>
<tr>
<td>Pendidikan terakhir</td>
<td><?= $model['pasutri_pendidikan'] ?></td>
</tr>
<tr>
<td>Pekerjaan saat ini</td>
<td><?= $model['pasutri_pekerjaan'] ?></td>
</tr>
<tr>
<td>Alamat sesuai KTP</td>
<td><?= $model['pasutri_alamat'] ?></td>
</tr>
<tr>
<td>No WA Aktif</td>
<td><?= $model['pasutri_istri_nomorhp'] ?></td>
</tr>
<tr>
<td>Status Perkawinan</td>
<td><?= $model['pasutri_istri_statuskawin'] ?></td>
</tr>
<tr>
<td>Membaca Al-Qur'an</td>
<td><?= $model['pasutri_istri_bacaalquran'] ?></td>
</tr>
</table>
</body>

</html>


<script type="text/javascript">
    $(document).ready(function(){
        window.print();
    });
</script>
</html>  