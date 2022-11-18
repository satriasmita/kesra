<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SurveiKategori */

$this->title = 'Tambah Kategori IKM';
$this->params['breadcrumbs'][] = ['label' => 'Survei Kategori', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box box-success">
    <div class="box-body">
        <?= $this->render('_form', [
            'model' => $model,
        ]) ?>
    </div>
</div>
