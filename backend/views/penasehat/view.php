<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Penasehat */

$this->title = $model->penasehat_id;
$this->params['breadcrumbs'][] = ['label' => 'Penasehats', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="penasehat-view">
<div class="box box-solid box-warning">
        <div class="box-header">
            <h3 class="box-title">DATA PENASEHAT</h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Perbarui', ['update', 'id' => $model->penasehat_id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('<i class="fa fa-fw fa-trash"></i>Hapus', ['delete', 'id' => $model->penasehat_id], ['class' => 'btn btn-danger','data' => ['confirm' => 'Anda Yakin Ingin Menghapus Data Ini?', 'method' => 'post',],]) ?>
            </div>
        </div>
        <div class="box-body">
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            // 'penasehat_id',
            'penasehat_nama',
            [
                'attribute' => 'pasutri.pasutri_suami',
                'label' => 'Nama Suami',
            ],
            [
                'attribute'=>'penasehat_tanggaldimulai',
                'format' => 'html',
                'value' => function ($data){
                    return $data->tanggalIndo($data->penasehat_tanggaldimulai) ;
                },
            ],
            [
                'attribute' => 'kecamatan.nama_kec',
                'label' => 'Kecamatan KUA',
            ],
            'penasehat_keterangan:ntext',
            'penasehat_predikat',
            [
                'attribute'=>'penasehat_tanggalselesai',
                'format' => 'html',
                'value' => function ($data){
                    return $data->tanggalIndo($data->penasehat_tanggalselesai) ;
                },
            ],
        ],
    ]) ?>

</div>
