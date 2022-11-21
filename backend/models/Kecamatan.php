<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kecamatan".
 *
 * @property int $kecamatan_id
 * @property string $nama_kec
 * @property int $kd_kecamatan
 * @property int $id_kota
 * @property string $alamat
 * @property string $index
 */
class Kecamatan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kecamatan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kecamatan_id', 'alamat', 'index'], 'required'],
            [['kecamatan_id', 'kd_kecamatan', 'id_kota'], 'integer'],
            [['nama_kec', 'alamat'], 'string', 'max' => 255],
            [['index'], 'string', 'max' => 128],
            [['kecamatan_id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'kecamatan_id' => 'Kecamatan ID',
            'nama_kec' => 'Nama Kec',
            'kd_kecamatan' => 'Kd Kecamatan',
            'id_kota' => 'Id Kota',
            'alamat' => 'Alamat',
            'index' => 'Index',
        ];
    }
}
