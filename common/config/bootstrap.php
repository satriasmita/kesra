<?php
Yii::setAlias('@common', dirname(__DIR__));
Yii::setAlias('@frontend', dirname(dirname(__DIR__)) . '/frontend');
Yii::setAlias('@backend', dirname(dirname(__DIR__)) . '/backend');
Yii::setAlias('@console', dirname(dirname(__DIR__)) . '/console');
Yii::setAlias('@uploads', dirname(dirname(__DIR__)) . '/uploads'); 
Yii::setAlias('@browseimage', '/uploads'); 
Yii::setAlias('@root','http://localhost:8080/kesra/'); // LINK BERFUNGSI AGAR KETIKA SLIDER DI BUAT, IMAGE DAPAT MUNCUL

