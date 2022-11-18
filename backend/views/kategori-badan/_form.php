<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\KategoriBadan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kategori-badan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'badan_kategori')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
