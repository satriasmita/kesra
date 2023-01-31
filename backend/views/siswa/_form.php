<?php

use backend\models\Kecamatan;
use backend\models\MasterJuz;
use backend\models\MasterMda;
use backend\models\MasterSekolah;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Siswa */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="siswa-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'siswa_id')->textInput(['maxlength' => true]) ?>
            </div>
        <div class="col-md-6">
            <?= $form->field($model, 'sekolah_id')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(MasterSekolah::find()->all(),'sekolah_id','sekolah_nama'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'mda_id')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(MasterMda::find()->all(),'mda_id','mda_nama'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>
        </div>
            <div class="col-md-6">
            <?= $form->field($model, 'kecamatan_id')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(Kecamatan::find()->all(),'kecamatan_id','nama_kec'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>
            </div>
        <div class="col-md-6">
            <?= $form->field($model, 'siswa_nama')->textInput(['maxlength' => true]) ?>
            </div>
        <div class="col-md-6">
            <?= $form->field($model, 'siswa_kelas')->textInput(['maxlength' => true]) ?>
            </div>
        <div class="col-md-6">
            <?= $form->field($model, 'siswa_juz')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(MasterJuz::find()->all(),'juz_id','juz_nama'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>
            </div>
        <div class="col-md-6">
            <?= $form->field($model, 'siswa_namaayah')->textInput(['maxlength' => true]) ?>
            </div>
        <div class="col-md-6">
            <?= $form->field($model, 'siswa_namaibu')->textInput(['maxlength' => true]) ?>
            </div>
        <div class="col-md-6">
            <?= $form->field($model, 'siswa_alamat')->textarea(['rows' => 6]) ?>
            </div>
        <div class="col-md-12">
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>
        </div>
    <?php ActiveForm::end(); ?>

</div>
