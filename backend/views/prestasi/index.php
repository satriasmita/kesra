<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PrestasiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Prestasis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prestasi-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Prestasi', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'prestasi_id',
            'siswa_id',
            'prestasi_nama',
            'prestasi_tingkat',
            'prestasi_dll',
            //'prestasi_penyelenggara',
            //'prestasi_tempatkeg',
            //'prestasi_ket:ntext',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
