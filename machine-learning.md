# Demistificare il Machine Learning

* X = `Input Data`
* Y = `Labels` (un umano ha etichettato ciascun esempio)

Es. prenotazioni => pizze vendute: c'è una relazione lineare? Sembra.

**Scatter plot diagram**

### Linear regression

* **regression** = prevedere il valore di una variabile da una o più variabili
* **linear** = uso una linea (ovvero ho una sola variabile come input data)

Approccio: 

1. approssima i punti con una linea 
2. (butta via i punti ed) usa la linea per fare predizioni

=> **regressione lineare**: prevedo una variabile dipendente a partire da un'altra, con la quale ha una relazione

* `y cappelletto` (`y^`, _y hat_) è la previsione
* `y` è la label

```
y^ = w*X + b
```

trovare i valori di `w` (_weight_) e `b` (_bias_) che mi danno l'errore più basso possibile.

per trovare la linea si usa una strategia abbastanza generale da poter essere usata anche con problemi più complessi (ad esempio non uso l'analisi matematica): data la curva che rappresenta l'errore medio (`loss`), usiamo un `"gradient descent"` ripetuto per diverse iterazioni fino a quando non arriviamo ad una approssimazione abbastanza soddisfacente dei nostri campioni. 
Il **gradient descent** consiste nel farsi guidare dalla derivata della curva che rappresenta l'errore (*loss*) per raggiungere un punto di errore ridotto.
A quel punto abbiamo trovato la linea (`w` e `b`) che approssima bene i nostri campioni.

1. troviamo la linea => **"training"**, ovvero allenare il nostro sistema ad adattare il nostro modello ai dati
2. usiamo la linea per predire il futuro 

Il **Training**, è lungo e costoso.
La **Prediction**, è veloce.

=> **Supervised learning**: parto da degli esempi, tu li studi, fai training, e poi mi dai la risposta.

### Regressione lineare multipla 
con più variabili in ingresso

```
X0  X1  X2  ... Xn  =>  Y
1       23  34          89          223
3       45  ..  

...

w0, w1, w2, ... wn
```

senza le approssimazioni successive il machine learning non lo fai

**loss logaritmica**

 `one-hot encoding` = un solo bit è a `1`, gli altri sono a `0`

Prediction => Classification
 
_Perceptron_ => storia dell'informatica

predict() => forward()

se il modello è "scemo", non diventa "furbo".

modelli lineari => può fallire se la relazione non è lineare ma ad es quadratica 

=> rete neurale

_Overfitting_ (il modello "impara a memoria" anziché generalizzare).

Attualmente nel ML la capacità tecnica mangia a colazione la disponibilità di tecnologie avanzate.
Ma la disponibilità di dati mangia tutti e due a colazione pranzo e cena `:)`

_TensorFlow_
GPU => calcolo matriciale

ML Commodities
Ad es Google fornisce API per classificare immagini
