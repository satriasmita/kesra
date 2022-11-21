<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p><?= Yii::$app->user->identity->profile->full_name; ?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Beranda', 'icon' => 'home', 'url' => ['/site/index']],
                    ['label' => 'Posting', 'icon' => 'users', 'url' => ['/posting']],       
                    ['label' => 'Pengaturan Slider', 'icon' => 'desktop', 'url' => ['/slider']],
                    ['label' => 'Manajemen User', 'icon' => 'users', 'url' => ['/user/admin']],
                    ['label' => 'Profil User', 'icon' => 'user', 'url' => ['/user/profile']],
                    ['label' => 'Info Akun', 'icon' => 'lock', 'url' => ['/user/account']],
                    [
                        'label' => 'Pengaturan Tampilan',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Kategori Posting', 'icon' => 'tv', 'url' => ['/posting-kategori']],
                        ],
                    ],
                    ['label' => 'Manajemen Galeri', 'icon' => 'folder-open-o', 'url' => ['/posting']],
                    ['label' => 'Data Instansi', 'icon' => 'bank', 'url' => ['/data-instansi']],

                ],
            ]
        ) ?>

    </section>

</aside>
