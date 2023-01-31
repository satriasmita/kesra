<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use backend\models\Siswa;

/* @var $this yii\web\View */
/* @var $model backend\models\Prestasi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="prestasi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'siswa_id')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(Siswa::find()->all(),'siswa_id','siswa_nama'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>

    <?= $form->field($model, 'prestasi_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_tingkat')->dropDownList([
                '1' => 'Kelurahan / Desa',
                '2' => 'Kecamatan',
                '3' => 'Kota',
                '4' => 'Provinsi',
                '5' => 'Internasional'
            ]) ?>

    <?= $form->field($model, 'prestasi_dll')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_penyelenggara')->textInput(['maxlength' => true]) ?>
    <!-- ?= $form->field($model, 'prestasi_penyelenggara')->checkboxList([
                '1' => 'Kelurahan / Desa',
                '2' => 'Kecamatan',
                '3' => 'Kota',
                '4' => 'Provinsi',
                '5' => 'Internasional'
            ]) ?> -->


    <?= $form->field($model, 'prestasi_tempatkeg')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prestasi_ket')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
