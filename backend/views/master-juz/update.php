<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterJuz */

$this->title = 'Update Master Juz: ' . $model->juz_id;
$this->params['breadcrumbs'][] = ['label' => 'Master Juzs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->juz_id, 'url' => ['view', 'id' => $model->juz_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="master-juz-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
