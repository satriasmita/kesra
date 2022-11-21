<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterSekolah */

$this->title = 'Update Master Sekolah: ' . $model->sekolah_id;
$this->params['breadcrumbs'][] = ['label' => 'Master Sekolahs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->sekolah_id, 'url' => ['view', 'id' => $model->sekolah_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="master-sekolah-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
