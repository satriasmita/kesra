<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\helpers\StringHelper;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use backend\models\Jenis;
use backend\models\LaporKejadian;
use yii\widgets\DetailView;

$tahun = date('Y');

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ProtokolerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'REKAP DATA PESERTA TAHFIDZ ';
$this->params['breadcrumbs'][] = $this->title;
?>

<body onload="window.print();">
<!--<body>-->

<?php $this->beginBody() ?>

<style type="text/css">
        @media print{
            @page {size: landscape; margin-top: 20px; padding-left: 0px;}
            }
</style>
       
<table width="100%">
  <td>
      <div class="row">
          <div class="col-xs-12 text-left" style=" height: 80px;" >
          <table width="100%" >
                    <tr style="font-size:14px; font-family:times new roman;">
                        <td width="20%"><img class="img pull-left" src="<?php echo Url::to('@web/images/logo.png')?>" alt="logo" style="width:65px; margin-top:-25px"></td>
                        <td width="60%" align="center" style=" padding:5px; padding-bottom: 1px; ">
                            <p style="font-size:15px;"><b>PEMERINTAH KOTA PARIAMAN</b></p>
                            <p style="font-size:18px;"><b>SATUAN POLISI PAMONG PRAJA</b></p>
                            <p style="font-size:18px; margin-top:-10px;"><b>DAN PEMADAM KEBAKARAN</b></p>
                            <p style="font-size:15px; margin-top:-5px;">Jl. Syam Ratulangi No. 5 Kampung Baru Pariaman</p>
                            
                        </td>
                    </tr>
                </table>
                <div style="margin-top:0px;border-bottom:3px solid black;"></div>
            </div>
      </div>
    </td>
</table>

<p> 
  <h3 align="center">&nbsp; </h3>
<p> 


<?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
                'attribute' => 'sekolah.sekolah_nama',
                'label' => 'Sekolah',
            ],
            [
                'header' => 'MDA / MDTA',
                'label' => 'MDA / MDTA',
                'value' =>'siswa_mda',
                'filterInputOptions' => [
                    'class'       => 'form-control',
                    'placeholder' => 'MDA..'
                 ]
            ],
            [
                'attribute' => 'kecamatan.nama_kec',
                'label' => 'Kecamatan',
            ],
            [
                'header' => 'Nama',
                'label' => 'Nama',
                'value' =>'siswa_nama',
                'filterInputOptions' => [
                    'class'       => 'form-control',
                    'placeholder' => 'Nama..'
                 ]
            ],
            [
                'header' => 'Kelas',
                'label' => 'Kelas',
                'value' =>'siswa_kelas',
                'filterInputOptions' => [
                    'class'       => 'form-control',
                    'placeholder' => 'Kelas..'
                 ]
            ],
            [
                'header' => 'Juz',
                'label' => 'Juz',
                'value' =>'siswa_juz',
                'filterInputOptions' => [
                    'class'       => 'form-control',
                    'placeholder' => 'Juz..'
                 ]
            ],
            [
                'header' => 'Nama Ayah',
                'label' => 'Nama Ayah',
                'value' =>'siswa_namaayah',
                'filterInputOptions' => [
                    'class'       => 'form-control',
                    'placeholder' => 'Ayah..'
                 ]
            ],
            [
                'header' => 'Nama Ibu',
                'label' => 'Nama Ibu',
                'value' =>'siswa_namaibu',
                'filterInputOptions' => [
                    'class'       => 'form-control',
                    'placeholder' => 'Ibu..'
                 ]
            ],
            [
                'header' => 'Alamat',
                'label' => 'Alamat',
                'value' =>'siswa_alamat',
                'filterInputOptions' => [
                    'class'       => 'form-control',
                    'placeholder' => 'Alamat..'
                 ]
            ],

            
        ],
    ]); ?>


<script type="text/javascript">
    $(document).ready(function(){
        window.print();
    });
</script>
</html>  

