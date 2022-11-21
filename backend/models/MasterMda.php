<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "master_mda".
 *
 * @property int $mda_id
 * @property string $mda_nama
 * @property string $mda_alamat
 */
class MasterMda extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'master_mda';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['mda_alamat'], 'string'],
            [['mda_nama'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'mda_id' => 'Mda ID',
            'mda_nama' => 'Mda Nama',
            'mda_alamat' => 'Mda Alamat',
        ];
    }
}
