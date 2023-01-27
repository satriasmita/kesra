<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "hafalan".
 *
 * @property int $hafalan_id
 * @property int $siswa_id
 * @property string $hafalan_juz
 * @property string $hafalan_detail
 *
 * @property Siswa $hafalan
 */
class Hafalan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'hafalan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['siswa_id', 'hafalan_juz', 'hafalan_detail'], 'required'],
            [['siswa_id'], 'integer'],
            [['hafalan_juz'], 'string', 'max' => 10],
            [['hafalan_detail'], 'string', 'max' => 255],
            [['hafalan_id'], 'exist', 'skipOnError' => true, 'targetClass' => Siswa::className(), 'targetAttribute' => ['hafalan_id' => 'siswa_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'hafalan_id' => 'Hafalan ID',
            'siswa_id' => 'Siswa ID',
            'hafalan_juz' => 'Hafalan Juz',
            'hafalan_detail' => 'Hafalan Detail',
        ];
    }

    /**
     * Gets query for [[Hafalan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getHafalan()
    {
        return $this->hasOne(Siswa::className(), ['siswa_id' => 'hafalan_id']);
    }
}
