<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "penasehat".
 *
 * @property int $penasehat_id
 * @property string $penasehat_nama
 * @property int $pasutri_id
 * @property string $penasehat_tanggaldimulai
 * @property string $penasehat_keckua
 * @property string $penasehat_keterangan
 * @property string $penasehat_predikat
 * @property string $penasehat_tanggalselesai
 */
class Penasehat extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'penasehat';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['penasehat_nama', 'pasutri_id', 'penasehat_tanggaldimulai', 'penasehat_keckua', 'penasehat_keterangan', 'penasehat_predikat', 'penasehat_tanggalselesai'], 'required'],
            [['pasutri_id'], 'integer'],
            [['penasehat_tanggaldimulai', 'penasehat_tanggalselesai'], 'safe'],
            [['penasehat_keterangan'], 'string'],
            [['penasehat_nama'], 'string', 'max' => 50],
            [['penasehat_keckua', 'penasehat_predikat'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'penasehat_id' => 'ID',
            'penasehat_nama' => 'Nama Penasehat',
            'pasutri_id' => 'Pasutri ID',
            'penasehat_tanggaldimulai' => 'Tanggal dimulai penasehatan',
            'penasehat_keckua' => 'Kecamatan KUA',
            'penasehat_keterangan' => 'Keterangan',
            'penasehat_predikat' => 'Predikat',
            'penasehat_tanggalselesai' => 'Tanggal selesai penasehatan',
        ];
    }

    public function tanggalIndo($tanggal, $cetak_hari = true)
    {
        $array_hari = array(1=>'Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu');
        $hari = $array_hari[date('N',strtotime($tanggal))];

        //FORMAT TANGGAL
        $tgl = date ('j', strtotime($tanggal));

        //ARRAY BULAN
        $array_bulan = array(1=>'Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
        $bulan = $array_bulan[date('n', strtotime($tanggal))];

        //FORMAT TAHUN
        $tahun = date('Y', strtotime($tanggal));

        $jam = date('H:i:s', strtotime($tanggal));

        //MENAMPILKAN HARI DAN TANGGAL
        $tgl_indo =$hari . ', ' . $tgl . ' '. $bulan . ' '. $tahun;

        if ($tanggal) {
            return $tgl_indo;
        } else{
            return 'Tidak Diset';
        }
    }

    public function getPasutri()
    {
        return $this->hasOne(Pasutri::className(), ['pasutri_id' => 'pasutri_id']);
    }

    public function getKecamatan()
    {
        return $this->hasOne(Kecamatan::className(), ['kecamatan_id' => 'penasehat_keckua']);
    }
}
