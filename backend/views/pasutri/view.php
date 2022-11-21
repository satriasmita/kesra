<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Pasutri */

$this->title = $model->pasutri_id;
$this->params['breadcrumbs'][] = ['label' => 'Pasutris', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="pasutri-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->pasutri_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->pasutri_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'pasutri_id',
            'pasutri_nama',
            'pasutri_ttl',
            'pasutri_pendidikan',
            'pasutri_pekerjaan',
            'pasutri_alamat:ntext',
            'pasutri_suami',
            'pasutri_ttlsuami',
            'pasutri_pendidikansuami',
            'pasutri_alamatsuami:ntext',
            'pasutri_tglnikah',
            'pasutri_pesta',
            'pasutri_tglpenasehat',
            'pasutri_alamatnikah:ntext',
        ],
    ]) ?>

</div>
