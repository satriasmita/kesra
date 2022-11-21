<?php

namespace backend\controllers;

use backend\models\MasterMda;
use backend\models\MasterSekolah;
use Yii;
use backend\models\Siswa;
use backend\models\SiswaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\base\DynamicModel;

/**
 * SiswaController implements the CRUD actions for Siswa model.
 */
class SiswaController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Siswa models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new SiswaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Siswa model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Siswa model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Siswa();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->siswa_id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Siswa model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->siswa_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Siswa model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionFormSekolah()
    {
        $model = new DynamicModel(['sekolah_id']);
        $model->addRule('sekolah_id', 'safe');

        return $this->render('form-sekolah', [
            'model' => $model,
        ]);
    }


    public function actionSearchSekolah()
    {
        $sekolah_id =  Yii::$app->request->queryParams['DynamicModel']['sekolah_id'];

        $cariNama = MasterSekolah::find()->where(['sekolah_id'=>$sekolah_id])->one(); //MELAKUKAN PENCARIAN DARI TABEL LAIN
        $carinamasekolah = $cariNama->sekolah_nama;

         $srt = Siswa::find()
        ->where(['sekolah_id'=> $sekolah_id]);
        $dataProvider = new \yii\data\ActiveDataProvider([
            'query'=> $srt,
            'pagination' => [
                'pageSize' => 100,
            ],
        ]);
        return $this->render('search-sekolah', [
            'sekolah_id' => $carinamasekolah,
            'dataProvider' => $dataProvider,
            
        ]);
    
    }

    public function actionFormMda()
    {
        $model = new DynamicModel(['mda_id']);
        $model->addRule('mda_id', 'safe');

        return $this->render('form-mda', [
            'model' => $model,
        ]);
    }


    public function actionSearchMda()
    {
        $mda_id =  Yii::$app->request->queryParams['DynamicModel']['mda_id'];

        $cariNama = MasterMda::find()->where(['mda_id'=>$mda_id])->one(); //MELAKUKAN PENCARIAN DARI TABEL LAIN
        $carinamamda = $cariNama->mda_nama;

         $srt = Siswa::find()
        ->where(['mda_id'=> $mda_id]);
        $dataProvider = new \yii\data\ActiveDataProvider([
            'query'=> $srt,
            'pagination' => [
                'pageSize' => 100,
            ],
        ]);
        return $this->render('search-mda', [
            'mda_id' => $carinamamda,
            'dataProvider' => $dataProvider,
            
        ]);
    
    }


    /**
     * Finds the Siswa model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Siswa the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Siswa::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
