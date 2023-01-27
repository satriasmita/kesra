<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Prestasi;

/**
 * PrestasiSearch represents the model behind the search form of `backend\models\Prestasi`.
 */
class PrestasiSearch extends Prestasi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['prestasi_id', 'siswa_id'], 'integer'],
            [['prestasi_nama', 'prestasi_tingkat', 'prestasi_dll', 'prestasi_penyelenggara', 'prestasi_tempatkeg', 'prestasi_ket'], 'safe'],
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
        $query = Prestasi::find();

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
            'prestasi_id' => $this->prestasi_id,
            'siswa_id' => $this->siswa_id,
        ]);

        $query->andFilterWhere(['like', 'prestasi_nama', $this->prestasi_nama])
            ->andFilterWhere(['like', 'prestasi_tingkat', $this->prestasi_tingkat])
            ->andFilterWhere(['like', 'prestasi_dll', $this->prestasi_dll])
            ->andFilterWhere(['like', 'prestasi_penyelenggara', $this->prestasi_penyelenggara])
            ->andFilterWhere(['like', 'prestasi_tempatkeg', $this->prestasi_tempatkeg])
            ->andFilterWhere(['like', 'prestasi_ket', $this->prestasi_ket]);

        return $dataProvider;
    }
}
