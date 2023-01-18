<?php

use backend\models\Kecamatan;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Penasehat */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="penasehat-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'penasehat_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'penasehat_tanggaldimulai')->widget(DatePicker::className(),[
            'language' => 'id',
            'type' => DatePicker::TYPE_COMPONENT_PREPEND,
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'yyyy-mm-dd',
                'todayHighlight' => true
            ]
        ]) ?>


    <?= $form->field($model, 'penasehat_keckua')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(Kecamatan::find()->all(),'kecamatan_id','nama_kec'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>

    <?= $form->field($model, 'penasehat_keterangan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'penasehat_predikat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'penasehat_tanggalselesai')->widget(DatePicker::className(),[
            'language' => 'id',
            'type' => DatePicker::TYPE_COMPONENT_PREPEND,
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'yyyy-mm-dd',
                'todayHighlight' => true
            ]
        ]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
