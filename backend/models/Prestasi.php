<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "prestasi".
 *
 * @property int $prestasi_id
 * @property int $siswa_id
 * @property string $prestasi_nama
 * @property string $prestasi_tingkat
 * @property string $prestasi_dll
 * @property string $prestasi_penyelenggara
 * @property string $prestasi_tempatkeg
 * @property string $prestasi_ket
 *
 * @property Siswa $siswa
 */
class Prestasi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'prestasi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['siswa_id', 'prestasi_nama', 'prestasi_tingkat', 'prestasi_dll', 'prestasi_penyelenggara', 'prestasi_tempatkeg', 'prestasi_ket'], 'required'],
            [['prestasi_ket'], 'string'],
            [['prestasi_nama'], 'string', 'max' => 100],
            [['prestasi_tingkat'], 'string', 'max' => 20],
            [['siswa_id'], 'string', 'max' => 16],
            [['prestasi_dll', 'prestasi_penyelenggara', 'prestasi_tempatkeg'], 'string', 'max' => 50],
            [['siswa_id'], 'exist', 'skipOnError' => true, 'targetClass' => Siswa::className(), 'targetAttribute' => ['siswa_id' => 'siswa_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'prestasi_id' => 'Prestasi ID',
            'siswa_id' => 'Nama Siswa',
            'prestasi_nama' => 'Prestasi Nama',
            'prestasi_tingkat' => 'Prestasi Tingkat',
            'prestasi_dll' => 'Prestasi Dll',
            'prestasi_penyelenggara' => 'Prestasi Penyelenggara',
            'prestasi_tempatkeg' => 'Prestasi Tempatkeg',
            'prestasi_ket' => 'Prestasi Ket',
        ];
    }

    /**
     * Gets query for [[Siswa]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSiswa()
    {
        return $this->hasOne(Siswa::className(), ['siswa_id' => 'siswa_id']);
    }
}
