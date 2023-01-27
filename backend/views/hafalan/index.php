<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\hafalanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Hafalans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hafalan-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Hafalan', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'hafalan_id',
            'siswa_id',
            'hafalan_juz',
            'hafalan_detail',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
