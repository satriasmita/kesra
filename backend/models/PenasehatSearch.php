<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Penasehat;

/**
 * PenasehatSearch represents the model behind the search form of `backend\models\Penasehat`.
 */
class PenasehatSearch extends Penasehat
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['penasehat_id', 'pasutri_id'], 'integer'],
            [['penasehat_nama', 'penasehat_tanggaldimulai', 'penasehat_keckua', 'penasehat_keterangan', 'penasehat_predikat', 'penasehat_tanggalselesai'], 'safe'],
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
        $query = Penasehat::find();

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
            'penasehat_id' => $this->penasehat_id,
            'pasutri_id' => $this->pasutri_id,
            'penasehat_tanggaldimulai' => $this->penasehat_tanggaldimulai,
            'penasehat_tanggalselesai' => $this->penasehat_tanggalselesai,
        ]);

        $query->andFilterWhere(['like', 'penasehat_nama', $this->penasehat_nama])
            ->andFilterWhere(['like', 'penasehat_keckua', $this->penasehat_keckua])
            ->andFilterWhere(['like', 'penasehat_keterangan', $this->penasehat_keterangan])
            ->andFilterWhere(['like', 'penasehat_predikat', $this->penasehat_predikat]);

        return $dataProvider;
    }
}
