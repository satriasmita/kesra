<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\hafalan;

/**
 * hafalanSearch represents the model behind the search form of `backend\models\hafalan`.
 */
class hafalanSearch extends hafalan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['hafalan_id', 'siswa_id'], 'integer'],
            [['hafalan_juz', 'hafalan_detail'], 'safe'],
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
        $query = hafalan::find();

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
            'hafalan_id' => $this->hafalan_id,
            'siswa_id' => $this->siswa_id,
        ]);

        $query->andFilterWhere(['like', 'hafalan_juz', $this->hafalan_juz])
            ->andFilterWhere(['like', 'hafalan_detail', $this->hafalan_detail]);

        return $dataProvider;
    }
}
