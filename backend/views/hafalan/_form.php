<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\hafalan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hafalan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'hafalan_id')->textInput() ?>

    <?= $form->field($model, 'siswa_id')->textInput() ?>

    <?= $form->field($model, 'hafalan_juz')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'hafalan_detail')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
