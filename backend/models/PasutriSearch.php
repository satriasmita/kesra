<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Pasutri;

/**
 * PasutriSearch represents the model behind the search form of `backend\models\Pasutri`.
 */
class PasutriSearch extends Pasutri
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pasutri_id'], 'integer'],
            [['pasutri_nama', 'pasutri_ttl', 'pasutri_pendidikan', 'pasutri_pekerjaan', 'pasutri_alamat', 'pasutri_suami', 'pasutri_ttlsuami', 'pasutri_pendidikansuami', 'pasutri_alamatsuami', 'pasutri_tglnikah', 'pasutri_pesta', 'pasutri_tglpenasehat', 'pasutri_alamatnikah'], 'safe'],
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
        $query = Pasutri::find();

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
            'pasutri_id' => $this->pasutri_id,
            'pasutri_tglnikah' => $this->pasutri_tglnikah,
            'pasutri_pesta' => $this->pasutri_pesta,
            'pasutri_tglpenasehat' => $this->pasutri_tglpenasehat,
        ]);

        $query->andFilterWhere(['like', 'pasutri_nama', $this->pasutri_nama])
            ->andFilterWhere(['like', 'pasutri_ttl', $this->pasutri_ttl])
            ->andFilterWhere(['like', 'pasutri_pendidikan', $this->pasutri_pendidikan])
            ->andFilterWhere(['like', 'pasutri_pekerjaan', $this->pasutri_pekerjaan])
            ->andFilterWhere(['like', 'pasutri_alamat', $this->pasutri_alamat])
            ->andFilterWhere(['like', 'pasutri_suami', $this->pasutri_suami])
            ->andFilterWhere(['like', 'pasutri_ttlsuami', $this->pasutri_ttlsuami])
            ->andFilterWhere(['like', 'pasutri_pendidikansuami', $this->pasutri_pendidikansuami])
            ->andFilterWhere(['like', 'pasutri_alamatsuami', $this->pasutri_alamatsuami])
            ->andFilterWhere(['like', 'pasutri_alamatnikah', $this->pasutri_alamatnikah]);

        return $dataProvider;
    }
}
