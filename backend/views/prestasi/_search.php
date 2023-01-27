<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PrestasiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="prestasi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'prestasi_id') ?>

    <?= $form->field($model, 'siswa_id') ?>

    <?= $form->field($model, 'prestasi_nama') ?>

    <?= $form->field($model, 'prestasi_tingkat') ?>

    <?= $form->field($model, 'prestasi_dll') ?>

    <?php // echo $form->field($model, 'prestasi_penyelenggara') ?>

    <?php // echo $form->field($model, 'prestasi_tempatkeg') ?>

    <?php // echo $form->field($model, 'prestasi_ket') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
