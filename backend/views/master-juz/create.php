<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterJuz */

$this->title = 'Input Master Juz';
$this->params['breadcrumbs'][] = ['label' => 'Master Juz', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-juz-create">
<div class="box box-solid box-success">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
        </div>

	    <div class="box-body">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
