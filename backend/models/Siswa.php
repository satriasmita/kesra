<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "siswa".
 *
 * @property int $siswa_id
 * @property string $siswa_nama_sekolah
 * @property string $siswa_mda
 * @property int $kecamatan_id
 * @property string $siswa_nama
 * @property string $siswa_kelas
 * @property int $siswa_juz
 * @property string $siswa_namaayah
 * @property string $siswa_namaibu
 * @property string $siswa_alamat
 */
class Siswa extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'siswa';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kecamatan_id', 'siswa_juz','mda_id'], 'integer'],
            [['siswa_alamat','siswa_id'], 'string'],
            [['sekolah_id'], 'string', 'max' => 100],
            [['siswa_nama', 'siswa_namaayah', 'siswa_namaibu'], 'string', 'max' => 50],
            [['siswa_kelas'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'siswa_id' => 'NIK Siswa',
            'sekolah_id' => 'Nama Sekolah',
            'mda_id' => 'MDA/MDTA',
            'kecamatan_id' => 'Kecamatan',
            'siswa_nama' => 'Nama',
            'siswa_kelas' => 'Kelas',
            'siswa_juz' => 'Juz',
            'siswa_namaayah' => 'Nama Ayah',
            'siswa_namaibu' => 'Nama Ibu',
            'siswa_alamat' => 'Alamat',
        ];
    }

    public function getKecamatan()
    {
        return $this->hasOne(Kecamatan::className(), ['kecamatan_id' => 'kecamatan_id']);
    }
    public function getSekolah()
    {
        return $this->hasOne(MasterSekolah::className(), ['sekolah_id' => 'sekolah_id']);
    }
    public function getJuz()
    {
        return $this->hasOne(MasterJuz::className(), ['juz_id' => 'siswa_juz']);
    }
    public function getMda()
    {
        return $this->hasOne(MasterMda::className(), ['mda_id' => 'mda_id']);
    }
    
}
