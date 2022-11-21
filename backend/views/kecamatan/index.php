<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KecamatanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kecamatans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kecamatan-index">
<div class="box box-solid box-info">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-plus-square"></i><b>Tambah ' .Html::encode($this->title).'</b>', ['create'], ['class' => 'btn btn-primary']) ?>
            </div>
        </div>
        <div class="box-body">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'kecamatan_id',
            'nama_kec',
            'kd_kecamatan',
            'id_kota',
            'alamat',
            //'index',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
