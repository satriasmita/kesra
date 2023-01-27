<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Prestasi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="prestasi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'siswa_id')->textInput() ?>

    <?= $form->field($model, 'prestasi_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_tingkat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_dll')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_penyelenggara')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_tempatkeg')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_ket')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
