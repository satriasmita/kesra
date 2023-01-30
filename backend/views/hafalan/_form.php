<?php

use backend\models\Siswa;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\hafalan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hafalan-form">

    <?php $form = ActiveForm::begin(); ?>


    <?= $form->field($model, 'siswa_id')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(Siswa::find()->all(),'siswa_id','siswa_nama'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>

    <?= $form->field($model, 'hafalan_juz')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'hafalan_detail')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
