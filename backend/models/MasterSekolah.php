<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "master_sekolah".
 *
 * @property int $sekolah_id
 * @property string $sekolah_nama
 * @property string $sekolah_alamat
 */
class MasterSekolah extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'master_sekolah';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['sekolah_alamat'], 'string'],
            [['sekolah_nama'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'sekolah_id' => 'Sekolah ID',
            'sekolah_nama' => 'Sekolah Nama',
            'sekolah_alamat' => 'Sekolah Alamat',
        ];
    }
}
