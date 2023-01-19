<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PenasehatSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Penasehat';
$this->params['breadcrumbs'][] = $this->title;
$tombol = '{view} {update} {delete}';
?>
<div class="penasehat-index">
<div class="box box-solid box-info">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            <div class="box-tools pull-right">
            </div>
        </div>
        <div class="box-body">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'pasutri.pasutri_suami',
                'label' => 'Nama Suami',
            ],
            'penasehat_nama',
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
            //'penasehat_keterangan:ntext',
            //'penasehat_predikat',
            //'penasehat_tanggalselesai',

            // ['class' => 'yii\grid\ActionColumn'],
            [
                'class' => 'yii\grid\ActionColumn',
                'contentOptions'=>['style'=>'white-space: normal;width:190px;'],
                'header' => 'Aksi',
                'template' => $tombol,
                'buttons' => [
                    'view' => function ($url, $model, $key){
                        return Html::a('<i class="fa fa-search"></i>', ['view','id'=>$key], [
                            'aria-label' => 'Lihat Detail Pasutri',
                            'title'=>'Lihat Detail Pasutri',
                            'style'=>'height:35px;width:40px;margin-bottom:5px;', 
                            'class' => 'btn btn-success', 
                            ]);
                    },
                    'update' => function ($url, $model, $key){
                        return Html::a('<i class="fa fa-pencil"></i>', ['update','id'=>$key], [
                            'aria-label' => 'Perbarui Pasutri',
                            'title'=>'Perbarui Pasutri',
                            'style'=>'height:35px;width:40px;margin-bottom:5px;', 
                            'class' => 'btn btn-primary', 
                            ]);
                    },
                    'delete' => function ($url, $model, $key){
                        return Html::a('<i class="fa fa-trash"></i>', ['delete','id'=>$key], [
                            'aria-label' => 'Hapus Pasutri',
                            'title'=>'Hapus Pasutri',
                            'style'=>'height:35px;width:40px;margin-bottom:5px;', 
                            'class' => 'btn btn-danger',
                            'data-confirm'=>'Apakah Anda Ingin Menghapus Data Ini?',
                            'data-method'=>'post',
                            ]);
                    },
                    'publish' => function ($url, $model, $key){
                        return Html::a('<i class="fa fa-check-square-o"></i>', ['publish','id'=>$key], [
                            'aria-label' => 'Publish Pasutri',
                            'title'=>'Publish Pasutri',
                            'style'=>'height:35px;width:40px;margin-bottom:5px;', 
                            'class' => 'btn btn-info',
                            'data-confirm'=>'Apakah Anda Ingin Publish Pasutri Ini?',
                            'data-method'=>'post',
                            ]);
                    },
                ]
            ],
        ],
    ]); ?>


</div>
