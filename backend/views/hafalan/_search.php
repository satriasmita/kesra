<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\hafalanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hafalan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'hafalan_id') ?>

    <?= $form->field($model, 'siswa_id') ?>

    <?= $form->field($model, 'hafalan_juz') ?>

    <?= $form->field($model, 'hafalan_detail') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
