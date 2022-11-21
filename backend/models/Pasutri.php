<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "pasutri".
 *
 * @property int $pasutri_id
 * @property string $pasutri_nama
 * @property string $pasutri_ttl
 * @property string $pasutri_pendidikan
 * @property string $pasutri_pekerjaan
 * @property string $pasutri_alamat
 * @property string $pasutri_suami
 * @property string $pasutri_ttlsuami
 * @property string $pasutri_pendidikansuami
 * @property string $pasutri_alamatsuami
 * @property string $pasutri_tglnikah
 * @property string $pasutri_pesta
 * @property string $pasutri_tglpenasehat
 * @property string $pasutri_alamatnikah
 */
class Pasutri extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pasutri';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pasutri_alamat', 'pasutri_alamatsuami', 'pasutri_alamatnikah'], 'string'],
            [['pasutri_tglnikah', 'pasutri_pesta', 'pasutri_tglpenasehat'], 'safe'],
            [['pasutri_nama', 'pasutri_pendidikan', 'pasutri_suami', 'pasutri_pendidikansuami'], 'string', 'max' => 50],
            [['pasutri_ttl', 'pasutri_pekerjaan', 'pasutri_ttlsuami'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'pasutri_id' => 'ID',
            'pasutri_nama' => 'Nama',
            'pasutri_ttl' => 'Tempat / Tanggal Lahir',
            'pasutri_pendidikan' => 'Pendidikan',
            'pasutri_pekerjaan' => 'Pekerjaan',
            'pasutri_alamat' => 'Alamat',
            'pasutri_suami' => 'Nama Suami',
            'pasutri_ttlsuami' => 'Tempat / Tanggal Lahir',
            'pasutri_pendidikansuami' => 'Pendidikan',
            'pasutri_alamatsuami' => 'Alamat',
            'pasutri_tglnikah' => 'Tanggal Pernikahan',
            'pasutri_pesta' => 'Tanggal Pesta',
            'pasutri_tglpenasehat' => 'Tanggal Penasehat',
            'pasutri_alamatnikah' => 'Alamat setelah menikah',
        ];
    }
}
