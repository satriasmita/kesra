<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\MasterJuzSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Master Juz';
$this->params['breadcrumbs'][] = $this->title;
$tombol = '{view} {update} {delete}';
?>
<div class="master-juz-index">
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

            'juz_id',
            'juz_nama',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
