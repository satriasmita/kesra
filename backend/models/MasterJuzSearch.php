<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\MasterJuz;

/**
 * MasterJuzSearch represents the model behind the search form of `backend\models\MasterJuz`.
 */
class MasterJuzSearch extends MasterJuz
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['juz_id'], 'integer'],
            [['juz_nama'], 'safe'],
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
        $query = MasterJuz::find();

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
            'juz_id' => $this->juz_id,
        ]);

        $query->andFilterWhere(['like', 'juz_nama', $this->juz_nama]);

        return $dataProvider;
    }
}
