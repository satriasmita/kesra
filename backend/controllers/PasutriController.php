<?php

namespace backend\controllers;

use Yii;
use backend\models\Pasutri;
use backend\models\PasutriSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * PasutriController implements the CRUD actions for Pasutri model.
 */
class PasutriController extends Controller
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
     * Lists all Pasutri models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PasutriSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Pasutri model.
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
     * Creates a new Pasutri model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    // public function actionCreate()
    // {
    //     $model = new Pasutri();

    //     if ($model->load(Yii::$app->request->post()) && $model->save()) {
    //         return $this->redirect(['view', 'id' => $model->pasutri_id]);
    //     }

    //     return $this->render('create', [
    //         'model' => $model,
    //     ]);
    // }

    public function actionCreate()
    {
        $model = new Pasutri();

        $imageFile = UploadedFile::getInstance($model,'pasutri_fotoistri');
        $imageFile2 = UploadedFile::getInstance($model,'pasutri_fotosuami');

        if ($model->load(Yii::$app->request->post())) {
            $model->pasutri_fotoistri = UploadedFile::getInstance($model, 'pasutri_fotoistri');
            $model->pasutri_fotosuami = UploadedFile::getInstance($model, 'pasutri_fotosuami');
            if (! $model->pasutri_fotoistri) {
                $model->save();
            } else {
                if(isset($imageFile->size)){
                $imageFile->saveAs('images/Pasutri/'.$imageFile->baseName.'.'.$imageFile->extension);
                $imageFile2->saveAs('images/Pasutri/'.$imageFile2->baseName.'.'.$imageFile2->extension);
            }

            $model->pasutri_fotoistri = $imageFile->baseName.'.'.$imageFile->extension;
            $model->pasutri_fotosuami = $imageFile2->baseName.'.'.$imageFile2->extension;

            $model->save(false);
            }
            Yii::$app->session->setFlash('success', '<strong> Data Berhasil Ditambahkan </strong>');
            return $this->redirect(['view', 'id' => $model->pasutri_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     // return $this->redirect(['index']);
        //     return $this->redirect(['view', 'id' => $model->wargaid]);
        // }

        // return $this->render('create', [
        //     'model' => $model,
        // ]);
    }
    /**
     * Updates an existing Pasutri model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->pasutri_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Pasutri model.
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

    /**
     * Finds the Pasutri model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Pasutri the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Pasutri::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionFormPasutri()
    {
        $searchModel = new PasutriSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('form-pasutri', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionCetakForm($id)
    {
        return $this->render('cetak-form', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionCetak($id)
    {

        $model = new Pasutri();

        if ($model->load($this->request->post())) {

            $model->pasutri_id = $model->pasutri_id;

            $model->save(false);
            Yii::$app->session->setFlash('success', '<strong> Data Berhasil Ditambahkan </strong>');
            return $this->redirect(['index', 'id' => $model->pasutri_id]);
        } else {
            return $this->render('cetak', [
                'model' => $model,


            ]);
        }
    }

}
