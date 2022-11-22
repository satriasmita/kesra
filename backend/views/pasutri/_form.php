<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model backend\models\Pasutri */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pasutri-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="row">    
    <div class="col-md-12">
    <h5 align="left" style="text-decoration: underline; font-weight: bold; " >DATA ISTRI </h5>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_nama')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_ttl')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_pendidikan')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_pekerjaan')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_alamat')->textarea(['rows' => 6]) ?>
    </div> 
    <div class="col-md-12">
    <h5 align="left" style="text-decoration: underline; font-weight: bold; " >DATA SUAMI </h5>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_suami')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_ttlsuami')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_alamatsuami')->textarea(['rows' => 6]) ?>
    </div> 
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_pendidikansuami')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-12">
    <h5 align="left" style="text-decoration: underline; font-weight: bold; " >DATA PERNIKAHAN </h5>
    </div>
    <div class="col-md-6">
            <?= $form->field($model, 'pasutri_tglnikah')->widget(DatePicker::className(),[
            'language' => 'id',
            'type' => DatePicker::TYPE_COMPONENT_PREPEND,
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'yyyy-mm-dd',
                'todayHighlight' => true
            ]
        ]) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'pasutri_pesta')->widget(DatePicker::className(),[
            'language' => 'id',
            'type' => DatePicker::TYPE_COMPONENT_PREPEND,
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'yyyy-mm-dd',
                'todayHighlight' => true
            ]
        ]) ?>
        </div>
    <div class="col-md-6">
    <?= $form->field($model, 'pasutri_alamatnikah')->textarea(['rows' => 6]) ?>
    </div>
        <div class="col-md-6">
            <?= $form->field($model, 'pasutri_tglpenasehat')->widget(DatePicker::className(),[
            'language' => 'id',
            'type' => DatePicker::TYPE_COMPONENT_PREPEND,
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'yyyy-mm-dd',
                'todayHighlight' => true
            ]
        ]) ?>
        </div>
    <div class="col-md-12">
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>
    </div>
    <?php ActiveForm::end(); ?>

</div>
