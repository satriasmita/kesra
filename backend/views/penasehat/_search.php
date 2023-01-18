<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PenasehatSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="penasehat-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'penasehat_id') ?>

    <?= $form->field($model, 'penasehat_nama') ?>

    <?= $form->field($model, 'pasutri_id') ?>

    <?= $form->field($model, 'penasehat_tanggaldimulai') ?>

    <?= $form->field($model, 'penasehat_keckua') ?>

    <?php // echo $form->field($model, 'penasehat_keterangan') ?>

    <?php // echo $form->field($model, 'penasehat_predikat') ?>

    <?php // echo $form->field($model, 'penasehat_tanggalselesai') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
