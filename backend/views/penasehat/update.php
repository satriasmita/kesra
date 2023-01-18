<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Penasehat */

$this->title = 'Update Penasehat: ' . $model->penasehat_id;
$this->params['breadcrumbs'][] = ['label' => 'Penasehats', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->penasehat_id, 'url' => ['view', 'id' => $model->penasehat_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="penasehat-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
