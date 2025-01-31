# -*- coding: utf-8 -*-
from scipy.io import arff
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.tree import DecisionTreeClassifier
import pandas as pd
from scipy.stats import wilcoxon
from os import listdir
from scipy.stats import friedmanchisquare
from scipy.stats import rankdata
from scipy.stats import f


#ejecutar con python2.7

datasets=listdir('./datasets')

scoreWilKNN=[]
scoreWilSVM=[]
scoreWilTREE=[]

for i in datasets:

    print('Base de datos: ' + str(i))
    dataset = arff.loadarff('./datasets/' + str(i))
    df = pd.DataFrame(dataset[0])
    data = df.iloc[:, df.columns != 'class']
    target = pd.factorize(df['class'])[0]
    X_train, X_test, Y_train, Y_test = train_test_split(data, target, test_size=0.4)

    # Llamada y entrenamiento del algoritmo KNN
    knn = KNeighborsClassifier(n_neighbors=5)
    knn.fit(X_train, Y_train)
    print('Porcentaje de bien clasificados KNN:')
    print(knn.score(X_test, Y_test))
    scoreWilKNN.append(knn.score(X_test, Y_test))
    array = knn.predict([df.iloc[5, df.columns != 'class']])
    print('Clase predicha KNN')
    print(array)
    print('----------------')

    # llamada y entrenamiento algoritmo SVM
    svm = SVC(gamma='auto')
    svm.fit(X_train, Y_train)
    print('Porcentaje de bien clasificados SVM')
    print(svm.score(X_test, Y_test))
    scoreWilSVM.append(svm.score(X_test, Y_test))
    array = svm.predict([df.iloc[5, df.columns != 'class']])
    print('Clase predicha SVM')
    print(array)

    print('-----------------')

    # llamada y entrenamiento del arbol de decision
    arbol = DecisionTreeClassifier()
    arbol = arbol.fit(X_train, Y_train)
    print('Porcentaje de bien clasificados arbol')
    print(arbol.score(X_test, Y_test))
    scoreWilTREE.append(arbol.score(X_test, Y_test))
    array = arbol.predict([df.iloc[5, df.columns != 'class']])
    print('Clase predicha arbol')
    print(array)

    print('-----------------------------------------------')


print('Test de Wilcoxon para SVM y KNN de todos los datasets')
print(wilcoxon(x=scoreWilKNN, y=scoreWilSVM, zero_method='zsplit', correction=False))

print('Rango de Friedman KNN')
ranking=rankdata(scoreWilKNN)
print(ranking)

print('Rango de Friedman SVM')
ranking=rankdata(scoreWilSVM)
print(ranking)

print('Rango de Friedman TREE')
ranking=rankdata(scoreWilTREE)
print(ranking)

print('Test de Iman Davenport')
nDatasets=10
kAlgoritms=3
chi=friedmanchisquare(scoreWilTREE,scoreWilSVM,scoreWilKNN)
F=((nDatasets-1)*chi[0])/(nDatasets*(kAlgoritms-1)-chi[0])
print(f.sf(F))