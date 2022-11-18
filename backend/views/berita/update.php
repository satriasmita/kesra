<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Berita */

$this->title = 'Update Berita: ' . $model->berita_id;
$this->params['breadcrumbs'][] = ['label' => 'Beritas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->berita_id, 'url' => ['view', 'id' => $model->berita_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="berita-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
