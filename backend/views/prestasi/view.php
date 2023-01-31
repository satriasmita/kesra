<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Prestasi */

$this->title = $model->prestasi_id;
$this->params['breadcrumbs'][] = ['label' => 'Prestasi', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="prestasi-view">
<div class="box box-solid box-warning">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Perbarui', ['update', 'id' => $model->prestasi_id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('<i class="fa fa-fw fa-trash"></i>Hapus', ['delete', 'id' => $model->prestasi_id], ['class' => 'btn btn-danger','data' => ['confirm' => 'Anda Yakin Ingin Menghapus Data Ini?', 'method' => 'post',],]) ?>
            </div>
        </div>
        <div class="box-body">
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            [
                'attribute' => 'siswa.siswa_nama',
                'label' => 'Nama Siswa',
            ],
            'prestasi_nama',
            'prestasi_tingkat',
            [
                'attribute'=>'prestasi_tingkat',
                'value'=> $model->prestasi_tingkat == 1 ? 'Kelurahan / Desa' : ($model->prestasi_tingkat == 2 ? 'Kecamatan' : ($model->prestasi_tingkat == 3 ? 'Kota' : ($model->prestasi_tingkat == 4 ? 'Provinsi' : ($model->prestasi_tingkat == 5 ? 'Internasional' : '')))),
            ],
            'prestasi_dll',
            'prestasi_penyelenggara',
            'prestasi_tempatkeg',
            'prestasi_ket:ntext',
        ],
    ]) ?>

</div>
