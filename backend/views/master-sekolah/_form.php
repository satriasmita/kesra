<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterSekolah */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="master-sekolah-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'sekolah_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sekolah_alamat')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
