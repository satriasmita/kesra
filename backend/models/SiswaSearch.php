<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Siswa;

/**
 * SiswaSearch represents the model behind the search form of `backend\models\Siswa`.
 */
class SiswaSearch extends Siswa
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['siswa_id', 'kecamatan_id', 'siswa_juz','mda_id'], 'integer'],
            [['sekolah_id', 'siswa_nama', 'siswa_kelas', 'siswa_namaayah', 'siswa_namaibu', 'siswa_alamat'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Siswa::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'siswa_id' => $this->siswa_id,
            'kecamatan_id' => $this->kecamatan_id,
            'siswa_juz' => $this->siswa_juz,
            'mda_id' => $this->mda_id,
        ]);

        $query->andFilterWhere(['like', 'sekolah_id', $this->sekolah_id])
            ->andFilterWhere(['like', 'siswa_nama', $this->siswa_nama])
            ->andFilterWhere(['like', 'siswa_kelas', $this->siswa_kelas])
            ->andFilterWhere(['like', 'siswa_namaayah', $this->siswa_namaayah])
            ->andFilterWhere(['like', 'siswa_namaibu', $this->siswa_namaibu])
            ->andFilterWhere(['like', 'siswa_alamat', $this->siswa_alamat]);

        return $dataProvider;
    }
}
