<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\StringHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Siswa */

// $this->title = $model->siswa_id;
$this->title = 'Nama Siswa : '.StringHelper::truncateWords(strip_tags($model->siswa_nama), 20);
$this->params['breadcrumbs'][] = ['label' => 'Siswa', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="siswa-view">
<div class="box box-solid box-warning">
        <div class="box-header">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            <div class="box-tools pull-right">
                <?= Html::a('<i class="fa fa-fw fa-pencil-square"></i>Perbarui', ['update', 'id' => $model->siswa_id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('<i class="fa fa-fw fa-trash"></i>Hapus', ['delete', 'id' => $model->siswa_id], ['class' => 'btn btn-danger','data' => ['confirm' => 'Anda Yakin Ingin Menghapus Data Ini?', 'method' => 'post',],]) ?>
            </div>
        </div>
        <div class="box-body">
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'siswa_nama',
            [
                'attribute' => 'sekolah.sekolah_nama',
                'label' => 'Sekolah',
            ],
            [
                'attribute' => 'mda.mda_nama',
                'label' => 'MDA/MDTA',
            ],
            [
                'attribute' => 'kecamatan.nama_kec',
                'label' => 'Kecamatan',
            ],
            'siswa_kelas',
            [
                'attribute' => 'juz.juz_nama',
                'label' => 'Juz',
            ],
            'siswa_namaayah',
            'siswa_namaibu',
            'siswa_alamat:ntext',
        ],
    ]) ?>

</div>
