<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterMda */

$this->title = 'Update Master Mda: ' . $model->mda_id;
$this->params['breadcrumbs'][] = ['label' => 'Master Mdas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->mda_id, 'url' => ['view', 'id' => $model->mda_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="master-mda-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
