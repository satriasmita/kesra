<?php

namespace backend\models;
use yii\web\UploadedFile;
use yii\imagine\Image;

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
    public $image;
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
            [['pasutri_alamat', 'pasutri_alamatsuami', 'pasutri_alamatnikah','pasutri_istri_nik','pasutri_suami_nik','pasutri_istri_nomorhp','pasutri_suami_nomor_hp','pasutri_istri_statuskawin','pasutri_suami_statuskawin','pasutri_istri_bacaalquran','pasutri_suami_bacaalquran'], 'string'],
            [['pasutri_tglnikah', 'pasutri_pesta'], 'safe'],
            [['pasutri_nama', 'pasutri_pendidikan', 'pasutri_suami', 'pasutri_pendidikansuami'], 'string', 'max' => 50],
            [['pasutri_ttl', 'pasutri_pekerjaan', 'pasutri_ttlsuami','pasutri_suami_pekerjaan'], 'string', 'max' => 100],
            [['pasutri_fotoistri', 'pasutri_fotosuami'], 'string', 'max' => 255],
            [['pasutri_istri_usia','pasutri_suami_usia'], 'integer'],

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'pasutri_id' => 'ID',
            'pasutri_nama' => 'Nama Calon Istri',
            'pasutri_ttl' => 'Tempat / Tanggal Lahir Calon Istri',
            'pasutri_pendidikan' => 'Pendidikan Calon Istri',
            'pasutri_pekerjaan' => 'Pekerjaan Calon Istri',
            'pasutri_alamat' => 'Alamat Calon Istri',
            'pasutri_suami' => 'Nama Calon Suami',
            'pasutri_ttlsuami' => 'Tempat / Tanggal Lahir Calon Suami',
            'pasutri_pendidikansuami' => 'Pendidikan Calon Suami',
            'pasutri_alamatsuami' => 'Alamat Calon Suami',
            'pasutri_tglnikah' => 'Tanggal Pernikahan',
            'pasutri_pesta' => 'Tanggal Pesta',
            'pasutri_fotosuami' => 'Foto Suami',
            'pasutri_alamatnikah' => 'Alamat setelah menikah',
            'pasutri_istri_nik' => 'NIK KTP Calon Istri',
            'pasutri_suami_nik' => 'NIK KTP Calon Suami',
            'pasutri_istri_usia' => 'Usia saat ini Calon Istri',
            'pasutri_suami_usia' => 'Usia saat ini Calon Suami',
            'pasutri_istri_nomorhp' => 'No WA Aktif Calon Istri',
            'pasutri_suami_nomor_hp' => 'No WA Aktif Calon Suami',
            'pasutri_istri_statuskawin' => 'Status Perkawinan Calon Istri',
            'pasutri_suami_statuskawin' => 'Status Perkawinan Calon Suami',
            'pasutri_istri_bacaalquran' => 'Membaca Al-Quran Calon Istri',
            'pasutri_suami_bacaalquran' => 'Membaca Al-Quran Calon Suami',
            'pasutri_fotoistri' => 'Foto Istri',
            'pasutri_suami_pekerjaan' => 'Pekerjaan Calon Suami',
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
}
