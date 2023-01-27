<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\hafalan */

$this->title = 'Update Hafalan: ' . $model->hafalan_id;
$this->params['breadcrumbs'][] = ['label' => 'Hafalans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->hafalan_id, 'url' => ['view', 'id' => $model->hafalan_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="hafalan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
