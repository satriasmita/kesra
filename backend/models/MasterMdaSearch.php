<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\MasterMda;

/**
 * MasterMdaSearch represents the model behind the search form of `backend\models\MasterMda`.
 */
class MasterMdaSearch extends MasterMda
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['mda_id'], 'integer'],
            [['mda_nama', 'mda_alamat'], 'safe'],
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
        $query = MasterMda::find();

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
            'mda_id' => $this->mda_id,
        ]);

        $query->andFilterWhere(['like', 'mda_nama', $this->mda_nama])
            ->andFilterWhere(['like', 'mda_alamat', $this->mda_alamat]);

        return $dataProvider;
    }
}
