<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Pasutri */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pasutri-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pasutri_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pasutri_ttl')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pasutri_pendidikan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pasutri_pekerjaan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pasutri_alamat')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'pasutri_suami')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pasutri_ttlsuami')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pasutri_pendidikansuami')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pasutri_alamatsuami')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'pasutri_tglnikah')->textInput() ?>

    <?= $form->field($model, 'pasutri_pesta')->textInput() ?>

    <?= $form->field($model, 'pasutri_tglpenasehat')->textInput() ?>

    <?= $form->field($model, 'pasutri_alamatnikah')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
