<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Agenda;

/**
 * AgendaSearch represents the model behind the search form of `frontend\models\Agenda`.
 */
class AgendaSearch extends Agenda
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['agenda_id'], 'integer'],
            [['agenda_waktu', 'agenda_tempat', 'agenda_pukul', 'agenda_penjelasan'], 'safe'],
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
        $query = Agenda::find();

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
            'agenda_id' => $this->agenda_id,
        ]);

        $query->andFilterWhere(['like', 'agenda_waktu', $this->agenda_waktu])
            ->andFilterWhere(['like', 'agenda_tempat', $this->agenda_tempat])
            ->andFilterWhere(['like', 'agenda_pukul', $this->agenda_pukul])
            ->andFilterWhere(['like', 'agenda_penjelasan', $this->agenda_penjelasan]);

        return $dataProvider;
    }
}
