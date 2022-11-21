<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterMda */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="master-mda-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'mda_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'mda_alamat')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
