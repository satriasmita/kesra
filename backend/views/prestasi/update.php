<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Prestasi */

$this->title = 'Update Prestasi: ' . $model->prestasi_id;
$this->params['breadcrumbs'][] = ['label' => 'Prestasis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->prestasi_id, 'url' => ['view', 'id' => $model->prestasi_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="prestasi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
