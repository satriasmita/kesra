<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "master_juz".
 *
 * @property int $juz_id
 * @property string $juz_nama
 */
class MasterJuz extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'master_juz';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['juz_nama'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'juz_id' => 'Juz ID',
            'juz_nama' => 'Juz Nama',
        ];
    }
}
