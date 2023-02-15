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
    
    
    <?php if (Yii::$app->user->identity->role_id == 3) : ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    
                    ['label' => 'Beranda', 'icon' => 'home', 'url' => ['/site/index']],
                    [
                        'label' => 'Master',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Juz', 'icon' => 'tv', 'url' => ['/master-juz']],
                            ['label' => 'Sekolah', 'icon' => 'tv', 'url' => ['/master-sekolah']],
                            ['label' => 'MDA', 'icon' => 'tv', 'url' => ['/master-mda']],
                        ],
                    ],

                    // ['label' => 'Posting', 'icon' => 'users', 'url' => ['/posting']], 
                    ['label' => 'Data Siswa', 'icon' => 'desktop', 'url' => ['/siswa']],  
                    ['label' => 'Data Prestasi', 'icon' => 'desktop', 'url' => ['/prestasi']],  
                    ['label' => 'Data Hafalan', 'icon' => 'desktop', 'url' => ['/hafalan']],      
                    ['label' => 'Pengaturan Slider', 'icon' => 'desktop', 'url' => ['/slider']],
                    // [
                    //     'label' => 'Pengaturan Tampilan',
                    //     'icon' => 'bars',
                    //     'url' => '#',
                    //     "items" => [
                    //         ['label' => 'Kategori Posting', 'icon' => 'tv', 'url' => ['/posting-kategori']],
                    //     ],
                    // ],
                    [
                        'label' => 'Report',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Siswa', 'icon' => 'tv', 'url' => ['/siswa/cetak']],
                            ['label' => 'Sekolah', 'icon' => 'tv', 'url' => ['/master-sekolah']],
                            ['label' => 'MDA', 'icon' => 'tv', 'url' => ['/master-mda']],
                        ],
                    ],
                    [
                        'label' => 'User',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Manajemen User', 'icon' => 'users', 'url' => ['/user/admin']],
                            ['label' => 'Profil User', 'icon' => 'user', 'url' => ['/user/profile']],
                            ['label' => 'Info Akun', 'icon' => 'lock', 'url' => ['/user/account']],
                        ],
                    ],
                    // ['label' => 'Manajemen Galeri', 'icon' => 'folder-open-o', 'url' => ['/posting']],
                    // ['label' => 'Data Instansi', 'icon' => 'bank', 'url' => ['/data-instansi']],

                ],
            ]
        ) ?>

    <?php elseif (Yii::$app->user->identity->role_id == 1) : ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    [
                        'label' => 'Beranda',
                        'icon' => 'home',
                        'url' => ['/'],
                    ],
                    ['label' => 'Data Pasutri', 'icon' => 'user-plus', 'url' => ['/pasutri']],
                    ['label' => 'Data Penasehat', 'icon' => 'user-plus', 'url' => ['/penasehat']],
                    [
                        'label' => 'Report',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Cetak Form Pasutri', 'icon' => 'users', 'url' => ['/pasutri/form-pasutri']],
                            ['label' => 'Cetak Sertifikat', 'icon' => 'user', 'url' => ['/penasehat/form-sertifikat']],
                        ],
                    ],
                    [
                        'label' => 'User',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Manajemen User', 'icon' => 'users', 'url' => ['/user/admin']],
                            ['label' => 'Profil User', 'icon' => 'user', 'url' => ['/user/profile']],
                            ['label' => 'Info Akun', 'icon' => 'lock', 'url' => ['/user/account']],
                        ],
                    ],

                    [
                        'label' => 'Master',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Juz', 'icon' => 'tv', 'url' => ['/master-juz']],
                            ['label' => 'Sekolah', 'icon' => 'tv', 'url' => ['/master-sekolah']],
                            ['label' => 'MDA', 'icon' => 'tv', 'url' => ['/master-mda']],
                        ],
                    ],

                    ['label' => 'Data Siswa', 'icon' => 'desktop', 'url' => ['/siswa']],  
                    ['label' => 'Data Prestasi', 'icon' => 'desktop', 'url' => ['/prestasi']],  
                    ['label' => 'Data Hafalan', 'icon' => 'desktop', 'url' => ['/hafalan']],      
                    ['label' => 'Pengaturan Slider', 'icon' => 'desktop', 'url' => ['/slider']],
                
                    [
                        'label' => 'Report',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Siswa', 'icon' => 'tv', 'url' => ['/siswa/cetak']],
                            ['label' => 'Sekolah', 'icon' => 'tv', 'url' => ['/master-sekolah']],
                            ['label' => 'MDA', 'icon' => 'tv', 'url' => ['/master-mda']],
                        ],
                    ],
              
                ],
            ]
        ) ?>

    <?php elseif (Yii::$app->user->identity->role_id == 4) : ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    [
                        'label' => 'Beranda',
                        'icon' => 'home',
                        'url' => ['/'],
                    ],
                    ['label' => 'Data Pasutri', 'icon' => 'user-plus', 'url' => ['/pasutri']],
                    ['label' => 'Data Penasehat', 'icon' => 'user-plus', 'url' => ['/penasehat']],
                    [
                        'label' => 'Report',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Cetak Form Pasutri', 'icon' => 'users', 'url' => ['/pasutri/form-pasutri']],
                            ['label' => 'Cetak Sertifikat', 'icon' => 'user', 'url' => ['/penasehat/form-sertifikat']],
                        ],
                    ],
                    [
                        'label' => 'User',
                        'icon' => 'bars',
                        'url' => '#',
                        "items" => [
                            ['label' => 'Manajemen User', 'icon' => 'users', 'url' => ['/user/admin']],
                            ['label' => 'Profil User', 'icon' => 'user', 'url' => ['/user/profile']],
                            ['label' => 'Info Akun', 'icon' => 'lock', 'url' => ['/user/account']],
                        ],
                    ],
              
                ],
            ]
        ) ?>
        <?php endif; ?>

    </section>

</aside>
