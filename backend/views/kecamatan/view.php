<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Kecamatan */

$this->title = $model->kecamatan_id;
$this->params['breadcrumbs'][] = ['label' => 'Kecamatans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="kecamatan-view">
<div class="box box-solid box-warning">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Perbarui', ['update', 'id' => $model->kecamatan_id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('<i class="fa fa-fw fa-trash"></i>Hapus', ['delete', 'id' => $model->kecamatan_id], ['class' => 'btn btn-danger','data' => ['confirm' => 'Anda Yakin Ingin Menghapus Data Ini?', 'method' => 'post',],]) ?>
            </div>
        </div>
        <div class="box-body">
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'kecamatan_id',
            'nama_kec',
            'kd_kecamatan',
            'id_kota',
            'alamat',
            'index',
        ],
    ]) ?>

</div>
