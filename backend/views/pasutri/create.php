<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pasutri */

$this->title = 'Input Data Pasutri';
$this->params['breadcrumbs'][] = ['label' => 'Pasutri', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pasutri-create">
<div class="box box-solid box-success">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
        </div>

	    <div class="box-body">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
