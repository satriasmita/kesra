<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Penasehat */

$this->title = 'Input Penasehat';
$this->params['breadcrumbs'][] = ['label' => 'Penasehat', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="penasehat-create">
<div class="box box-solid box-success">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
        </div>

	    <div class="box-body">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
