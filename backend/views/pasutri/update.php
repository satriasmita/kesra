<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pasutri */

$this->title = 'Update Pasutri: ' . $model->pasutri_id;
$this->params['breadcrumbs'][] = ['label' => 'Pasutris', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->pasutri_id, 'url' => ['view', 'id' => $model->pasutri_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pasutri-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
