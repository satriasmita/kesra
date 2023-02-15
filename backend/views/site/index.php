<?php

/** @var yii\web\View $this */

use backend\models\Siswa;
use backend\models\Pasutri;
use backend\models\Penasehat;
use backend\models\Prestasi;
use backend\models\Hafalan;

$this->title = 'DASHBOARD APLIKASI KESRA';
?>
<div class="site-index">
    <div class="body-content">
        <div class="row">
            <?php
            $total_siswa = Siswa::find()->count();
            $total_pasutri = Pasutri::find()->count();
            $total_penasehat = Penasehat::find()->count();
            $total_prestasi = Prestasi::find()->count();
            $total_hafalan = Hafalan::find()->count();
            ?>
            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3><?= $total_siswa ?></h3>
                        <p>Total Siswa</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3><?= $total_pasutri ?></h3>
                        <p>Data Pasutri</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            
            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-teal">
                    <div class="inner">
                        <h3><?= $total_penasehat ?></h3>
                        <p>Data Penasehat</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-maroon">
                    <div class="inner">
                        <h3><?= $total_prestasi ?></h3>
                        <p>Data Prestasi</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6">
                <div class="small-box btn-success">
                    <div class="inner">
                        <h3><?= $total_hafalan ?></h3>
                        <p>Data Hafalan</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            
        </div>

    </div>
</div>
