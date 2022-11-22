<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\StringHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Pasutri */

$this->title = 'Nama Suami : '.StringHelper::truncateWords(strip_tags($model->pasutri_suami),10);
$this->params['breadcrumbs'][] = ['label' => 'Pasutri', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="pasutri-view">
<div class="box box-solid box-warning">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Perbarui', ['update', 'id' => $model->pasutri_id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('<i class="fa fa-fw fa-trash"></i>Hapus', ['delete', 'id' => $model->pasutri_id], ['class' => 'btn btn-danger','data' => ['confirm' => 'Anda Yakin Ingin Menghapus Data Ini?', 'method' => 'post',],]) ?>
            </div>
        </div>
        <div class="box-body">
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'pasutri_nama',
            'pasutri_ttl',
            'pasutri_pendidikan',
            'pasutri_pekerjaan',
            'pasutri_alamat:ntext',
            'pasutri_suami',
            'pasutri_ttlsuami',
            'pasutri_pendidikansuami',
            'pasutri_alamatsuami:ntext',
            // 'pasutri_tglnikah',
            [
                'attribute'=>'pasutri_tglnikah',
                'format' => 'html',
                'value' => function ($data){
                    return $data->tanggalIndo($data->pasutri_tglnikah) ;
                },
            ],
            [
                'attribute'=>'pasutri_pesta',
                'format' => 'html',
                'value' => function ($data){
                    return $data->tanggalIndo($data->pasutri_pesta) ;
                },
            ],
            [
                'attribute'=>'pasutri_tglpenasehat',
                'format' => 'html',
                'value' => function ($data){
                    return $data->tanggalIndo($data->pasutri_tglpenasehat) ;
                },
            ],
            // 'pasutri_pesta',
            // 'pasutri_tglpenasehat',
            'pasutri_alamatnikah:ntext',
        ],
    ]) ?>

</div>
