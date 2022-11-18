<?php 

use yii\helpers\Url;
use yii\helpers\Html;
use backend\models\Posting;

$imgPath = Yii::getAlias('@root').'/imagesfrontend';
$root_folder = Yii::getAlias('@root');

?>

<br>
<br>
<br>

<section class="team">
    <div class="container ptn">
        <div class="section-title">
            <div class="row">
                <div class="col-md-6">
                    <h6>Puskesmas Marunggi</h6>
                    <h2><span>Berita Terbaru</span></h2>
                </div>
                <div class="col-md-6">
                    <p>Dalam memberikan Pelayanan Kami selalu menerapkan Protokol kesehatan. Masyarakat Sehat adalah masyarakat yang membudidayakan Hidup Bersih dan menerapkan Pola Hidup Seimbang.
</p>
                </div>
            </div>
        </div>

        <div class="section_wrap">
            <div class="row">
                <div class="carousel-col-3">
                    <?php 
                        $beritaopd = (new Posting)->getDataUntukBerita(); 
                        foreach ($beritaopd as $row) {
                    ?>
                        <div class="team-item item">
                            <div class="team-img"> 
                                <?= Html::img($root_folder.$row->posting_image_utama,['style'=>'max-height:300px;min-height:300px;width:auto']); ?>
                            </div>

                            <div class="img-title">
                                <h4><?= $row->posting_judul ?></h4>
                                <p>Posting <?php echo $row->create_at; ?></p>
                            </div>
                            <div class="team-icon">
                                
                                <ul>
                                  <li><?= Html::a('Baca Selengkapnya', ['detail-berita', 'posting_id' => $row->posting_id], ['class' => 'btn theme-btn text-lowercase']) ?></li>
                                </ul>
                            </div>
                        </div>
                    <?php } ?> 
                </div>
            </div>
        </div>
    </div>
</section>