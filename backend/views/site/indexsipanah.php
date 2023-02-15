<?php

/** @var yii\web\View $this */

use backend\models\Pasutri;
use backend\models\Penasehat;
use backend\models\Siswa;

$this->title = 'DASHBOARD SIPANAH';
?>
<div class="site-index">
    <div class="body-content">
        <div class="row">
            <?php
            $total_pasutri = Pasutri::find()->count();
            $total_penasehat = Penasehat::find()->count();
            ?>
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
            
        </div>

    </div>
</div>
