<?php

use backend\models\MasterMda;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\date\DatePicker;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\ProtokolerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = 'Rekap Data Pelanggar per Individu';




$range = range(date('Y'), 2017);
?>
<div class="body-content">
   <div class="box-header">
     <div class="box box-solid box-info">
      <center><h3> Silahkan Melakukan Pemilihan Nama MDA</h3></center>
        <div class="upah-search">
         <div class="box-body">
          <?php $form = ActiveForm::begin([
            'action' => ['search-mda'],
            'method' => 'get','options' => [
                'target' => '_blank',
                ],
        ]); ?>
           <div class="row"> 


              <div class="col-md-3">
              <?= $form->field($model, 'mda_id')->widget(Select2::classname(),[
                                    'data' => ArrayHelper::map(MasterMda::find()->all(),'mda_id','mda_nama'),
                                    'language' => 'en',
                                    'options' => ['placeholder' => 'Pilih ..'],
                                    'pluginOptions' => ['allowClear' => true],
                                  ]); ?>
              </div>
              <div class="col-md-12">
                <?= Html::submitButton('Lihat Rekap Data', ['class' => 'btn btn-primary']) ?>
              </div>
          <?php ActiveForm::end(); ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

