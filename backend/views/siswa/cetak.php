<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SiswaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Siswa';
$this->params['breadcrumbs'][] = $this->title;
$tombol = '{view} {update} {delete}';
?>

<body onload="window.print();">
<!--<body>-->

<?php $this->beginBody() ?>

<style type="text/css">
        @media print{
            @page {size: landscape; margin-top: 20px; padding-left: 0px;}
            }
</style>
<script type="text/javascript">
  $(function(){
    // changed id to class
    $('.modalButton').click(function (){
        $.get($(this).attr('href'), function(data) {
          $('#modal').modal('show').find('#modalContent').html(data)
       });
       return false;
    });
}); 
</script>


<div class="siswa-index">
<div class="box box-solid box-info">
        <div class="box-header">
            <h3 class="box-title">REPORT DATA SISWA</h3>
            
        </div>
        <div class="box-body">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'header' => 'Nama Siswa',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'siswa_nama',
            ],
            [
                'header' => 'Sekolah',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'sekolah.sekolah_nama',
            ],
            [
                'header' => 'Kecamatan',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'kecamatan.nama_kec',
            ],
            [
                'header' => 'MDA',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'mda.mda_nama',
            ],
            [
                'header' => 'Kelas',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'siswa_kelas',
            ],
            [
                'header' => 'Juz',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'juz.juz_nama',
            ],
            [
                'header' => 'Nama Ayah',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'siswa_namaayah',
            ],
            [
                'header' => 'Nama Ibu',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'siswa_namaibu',
            ],
            [
                'header' => 'Alamat',
                'headerOptions' => ['style'=>'text-align:center; white-space: normal;'],
                'attribute' => 'siswa_alamat',
            ],
            
 
        ],
    ]); ?>

<script type="text/javascript">
    $(document).ready(function(){
        window.print();
    });
</script>


</div>
