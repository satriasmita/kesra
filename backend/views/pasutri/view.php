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
            <h3 class="box-title">DATA SUAMI</h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Penasehat', ['penasehat/create', 'id' => $model->pasutri_id], ['class' => 'btn btn-primary']) ?>
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Perbarui', ['update', 'id' => $model->pasutri_id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('<i class="fa fa-fw fa-trash"></i>Hapus', ['delete', 'id' => $model->pasutri_id], ['class' => 'btn btn-danger','data' => ['confirm' => 'Anda Yakin Ingin Menghapus Data Ini?', 'method' => 'post',],]) ?>
            </div>
        </div>
        <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'pasutri_suami',
                        'pasutri_ttlsuami',
                        'pasutri_pendidikansuami',
                        'pasutri_alamatsuami:ntext',
                        'pasutri_suami_nik',
                        'pasutri_suami_usia',
                        [
                            'attribute' => 'pasutri_fotosuami',
                            'label' => 'Foto Suami',
                            'contentOptions'=>['style'=>'text-align: left;'],
                            'format' => 'html',    
                            'filter'=> false,
                            'value' => function ($data) {
                                return Html::img(Yii::getAlias('@web').'/images/Pasutri/'. $data['pasutri_fotosuami'],
                                    ['height' => '200px']);
                            },
                        ],
                        'pasutri_suami_nomor_hp',
                        'pasutri_suami_statuskawin',
                        'pasutri_suami_bacaalquran',
                        'pasutri_suami_pekerjaan',
                        
                    ],
                ]) ?>
        </div>
        <div class="box-header">
            <h3 class="box-title">DATA ISTRI</h3>
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
                        'pasutri_istri_nik',
                        'pasutri_istri_usia',
                        'pasutri_istri_nomorhp',
                        
                        [
                            'attribute' => 'pasutri_fotoistri',
                            'label' => 'Foto Istri',
                            'contentOptions'=>['style'=>'text-align: left;'],
                            'format' => 'html',    
                            'filter'=> false,
                            'value' => function ($data) {
                                return Html::img(Yii::getAlias('@web').'/images/Pasutri/'. $data['pasutri_fotoistri'],
                                    ['height' => '200px']);
                            },
                        ],
                        'pasutri_suami_nomor_hp',
                        'pasutri_suami_statuskawin',
                        'pasutri_suami_bacaalquran',
                        'pasutri_suami_pekerjaan',
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
                        'pasutri_alamatnikah:ntext',
                    ],
                ]) ?>

    

</div>
