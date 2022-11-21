<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterMda */

$this->title = $model->mda_id;
$this->params['breadcrumbs'][] = ['label' => 'Master Mda', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="master-mda-view">
<div class="box box-solid box-warning">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Perbarui', ['update', 'id' => $model->mda_id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('<i class="fa fa-fw fa-trash"></i>Hapus', ['delete', 'id' => $model->mda_id], ['class' => 'btn btn-danger','data' => ['confirm' => 'Anda Yakin Ingin Menghapus Data Ini?', 'method' => 'post',],]) ?>
            </div>
        </div>
        <div class="box-body">

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'mda_id',
            'mda_nama',
            'mda_alamat:ntext',
        ],
    ]) ?>

</div>
