<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\helpers\StringHelper;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use backend\models\Jenis;
use backend\models\Surat;
        $tahun = date('Y');

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ProtokolerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Sertifikat';
$this->params['breadcrumbs'][] = $this->title;
?>
<body onload="window.print();">
<!--<body>-->

<?php $this->beginBody() ?>

<style type="text/css">
        @media print{
            @page {size: landscape; margin-top: 50px; padding-left: 50px;}
        }
</style>
            <!-- SERTIFIKAT SUAMI -->
<table width="100%">
    <td>
        <div class="row">
            <div class="col-xs-12 text-center" style=" height: 80px;" >
                    <table width="100%">
                    <tr>
                    <td width="80%">
                        <p style="font-size:60px; font-family:Brush Script MT; text-decoration: underline;"><b>Sertifikat</b></p>
                        <p style="font-size:20px; margin-top:-15px;">Nomor :......../BP4.SRTFKT/AKT-XIX/XII/2023</p>
                    </tr>
                    </table>
            </div>
        </div>
    </td>
</table>

<p> 
  <h3 align="center">&nbsp; </h3>

<body>
<h4 align="left" style="text-decoration: underline; font-weight: bold;"> </h4>
    <table style="border-spacing: 0; border-collapse: collapse; width: 100%;">
        <tr>
            <p align="center" style="width:90%; margin-right:30px; margin-left:100px; margin-top:30px; font-size: 20px;"> Badan Penasehat Pembinaan dan Pelestarian Perkawinan 
            (BP4) Kota Pariaman berdasarkan PERDIRJEN BIMAS ISLAM No.DJ.II/42 TAHUN 2013 tentang Pedoman
            Penyelenggaraan Kursus Pranikah menyatakan bahwa :</p>
        </tr>
        <table style="margin-left:auto;margin-right:auto" border="0">
        <tbody>
            <tr>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> Nama </p></td>
                <td> <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> : </p></td>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> <?= $modelPasutri['pasutri_suami']?> </p></td>
            </tr>
            <tr>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> Tempat / Tanggal Lahir </p> </td>
                <td> <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> : </p></td>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> <?= $modelPasutri['pasutri_ttlsuami']?> </p></td>
            </tr>
            <tr>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> Alamat </p></td>
                <td> <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> : </p></td>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> <?= $modelPasutri['pasutri_alamatsuami']?> </p></td>
            </tr>
        </tbody>
    </table>
        <tr >
           <p align="center" style="font-size:35px; font-family:Brush Script MT; width:90%; margin-right:30px; margin-left:50px; margin-top:30px;"> Telah mengikuti</p> 
        </tr>
        <tr>
        <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:30px;">
        Kursus Pranikah yang diselenggarakan oleh BP4 Kota Pariaman, mulai tanggal <?= $model['penasehat_tanggaldimulai']?> sampai dengan <?= $model['penasehat_tanggalselesai']?> </p>
        </tr>
        <tr>
        <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;">
            Dengan predikat <?= $model['penasehat_predikat']?> </p>
        </tr>
        <tr>
        <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;">
        Pariaman, <?= $model['penasehat_tanggalselesai']?>  </p>
        </tr>
    </table>
</body>

    <h1 align="center"></h1>
    <table width="745" border="0" cellspacing="0" cellpadding="5" align="center">
        <tr align="center" bgcolor="#66CC33">
        <td width="232"></td>
        <td width="353"></td>
        <td width="174"></td>
        </tr>

        <tr>
        <td> <P style="font-size:15px;">BP4 Kota Pariaman </P> </td>
        <td> </td>
        <td rowspan="10" align="center"><img src="Alde.jpg" width="150" height="200"></td>
        </tr>

        <tr>
        <td></td>
        <td></td>
        </tr>

        <tr>
        <td> <p style="font-size:15px; text-decoration: underline;"> Dr.dr.Hj. Lucyanel Arlym, MARS </p></td>
        <td></td>
        </tr>
    </table>
</body>



<!-- SERTIFIKAT ISTRI -->

<table width="100%">
    <td>
        <div class="row">
            <div class="col-xs-12 text-center" style=" height: 80px;" >
                    <table width="100%">
                    <tr>
                    <td width="80%">
                        <p style="font-size:60px; font-family:Brush Script MT; text-decoration: underline;"><b>Sertifikat</b></p>
                        <p style="font-size:20px; margin-top:-15px;">Nomor :......../BP4.SRTFKT/AKT-XIX/XII/2023</p>
                    </tr>
                    </table>
            </div>
        </div>
    </td>
</table>

<p> 
  <h3 align="center">&nbsp; </h3>

<body>
<h4 align="left" style="text-decoration: underline; font-weight: bold;"> </h4>
    <table style="border-spacing: 0; border-collapse: collapse; width: 100%;">
        <tr>
            <p align="center" style="width:90%; margin-right:30px; margin-left:100px; margin-top:30px; font-size: 20px;"> Badan Penasehat Pembinaan dan Pelestarian Perkawinan 
            (BP4) Kota Pariaman berdasarkan PERDIRJEN BIMAS ISLAM No.DJ.II/42 TAHUN 2013 tentang Pedoman
            Penyelenggaraan Kursus Pranikah menyatakan bahwa :</p>
        </tr>
        <table style="margin-left:auto;margin-right:auto" border="0">
        <tbody>
            <tr>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> Nama </p></td>
                <td> <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> : </p></td>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> <?= $modelPasutri['pasutri_nama']?> </p></td>
            </tr>
            <tr>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> Tempat / Tanggal Lahir </p> </td>
                <td> <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> : </p></td>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> <?= $modelPasutri['pasutri_ttl']?> </p></td>
            </tr>
            <tr>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> Alamat </p></td>
                <td> <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> : </p></td>
                <td> <p align="left" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;"> <?= $modelPasutri['pasutri_alamat']?> </p></td>
            </tr>
        </tbody>
    </table>
        <tr >
           <p align="center" style="font-size:35px; font-family:Brush Script MT; width:90%; margin-right:30px; margin-left:50px; margin-top:30px;"> Telah mengikuti</p> 
        </tr>
        <tr>
        <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:30px;">
        Kursus Pranikah yang diselenggarakan oleh BP4 Kota Pariaman, mulai tanggal <?= $model['penasehat_tanggaldimulai']?> sampai dengan <?= $model['penasehat_tanggalselesai']?> </p>
        </tr>
        <tr>
        <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;">
            Dengan predikat <?= $model['penasehat_predikat']?> </p>
        </tr>
        <tr>
        <p align="center" style="font-size:20px;width:90%; margin-right:30px; margin-left:50px; margin-top:5px;">
        Pariaman, <?= $model['penasehat_tanggalselesai']?>  </p>
        </tr>
    </table>
</body>

    <h1 align="center"></h1>
    <table width="745" border="0" cellspacing="0" cellpadding="5" align="center">
        <tr align="center" bgcolor="#66CC33">
        <td width="232"></td>
        <td width="353"></td>
        <td width="174"></td>
        </tr>

        <tr>
        <td> <P style="font-size:15px;">BP4 Kota Pariaman </P> </td>
        <td> </td>
        <td rowspan="10" align="center"><img src="Alde.jpg" width="150" height="200"></td>
        </tr>

        <tr>
        <td></td>
        <td></td>
        </tr>

        <tr>
        <td> <p style="font-size:15px; text-decoration: underline;"> Dr.dr.Hj. Lucyanel Arlym, MARS </p></td>
        <td></td>
        </tr>
    </table>
</body>