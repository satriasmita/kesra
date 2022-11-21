<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PasutriSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pasutri-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'pasutri_id') ?>

    <?= $form->field($model, 'pasutri_nama') ?>

    <?= $form->field($model, 'pasutri_ttl') ?>

    <?= $form->field($model, 'pasutri_pendidikan') ?>

    <?= $form->field($model, 'pasutri_pekerjaan') ?>

    <?php // echo $form->field($model, 'pasutri_alamat') ?>

    <?php // echo $form->field($model, 'pasutri_suami') ?>

    <?php // echo $form->field($model, 'pasutri_ttlsuami') ?>

    <?php // echo $form->field($model, 'pasutri_pendidikansuami') ?>

    <?php // echo $form->field($model, 'pasutri_alamatsuami') ?>

    <?php // echo $form->field($model, 'pasutri_tglnikah') ?>

    <?php // echo $form->field($model, 'pasutri_pesta') ?>

    <?php // echo $form->field($model, 'pasutri_tglpenasehat') ?>

    <?php // echo $form->field($model, 'pasutri_alamatnikah') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
