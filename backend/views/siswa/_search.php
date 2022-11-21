<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SiswaSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="siswa-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'siswa_id') ?>

    <?= $form->field($model, 'sekolah_id') ?>

    <?= $form->field($model, 'siswa_mda') ?>

    <?= $form->field($model, 'kecamatan_id') ?>

    <?= $form->field($model, 'siswa_nama') ?>

    <?php // echo $form->field($model, 'siswa_kelas') ?>

    <?php // echo $form->field($model, 'siswa_juz') ?>

    <?php // echo $form->field($model, 'siswa_namaayah') ?>

    <?php // echo $form->field($model, 'siswa_namaibu') ?>

    <?php // echo $form->field($model, 'siswa_alamat') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
