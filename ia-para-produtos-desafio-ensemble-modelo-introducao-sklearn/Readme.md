# 🧠 Desafio de Ensemble de Modelos

Neste desafio, você trabalhará com **dois datasets distintos**: um voltado para **classificação** e outro para **regressão**. O objetivo é aplicar as principais **técnicas de ensemble learning** estudadas ao longo do curso — como **Bagging**, **Boosting**, **Voting** e **Stacking** — e analisar como elas influenciam no desempenho preditivo dos modelos.

---

## 💡 Sugestão de Estrutura para Organização

Embora você tenha liberdade para montar o projeto da maneira que preferir, recomendamos a seguinte estrutura para facilitar a análise e a reprodutibilidade:

* 🔍 Um notebook de **EDA (Análise Exploratória de Dados)** para o dataset de classificação e outro para o de regressão
* 🛠️ Um notebook dedicado ao **pré-processamento dos datasets**, salvando versões tratadas dos dados (ex.: `airline_train_clean.csv`) e criando o modelo de pré-processamento
* 🤖 Um notebook separado para cada técnica de ensemble, com o respectivo **treinamento e validação do modelo**

---

## ✈️ Dataset de Classificação: *Airline Passenger Satisfaction*

O primeiro dataset, utilizado para a tarefa de classificação binária, traz dados sobre passageiros de companhias aéreas e suas avaliações em diversos aspectos da experiência de voo. O objetivo é prever se o passageiro ficou **"Satisfeito"** ou **"Neutro/Insatisfeito"** com base em informações pessoais, operacionais e de serviço.

### Principais colunas:

| Coluna                                | Descrição                                                   |
| ------------------------------------- | ----------------------------------------------------------- |
| `id`                                | Identificador único do passageiro.                          |
| `Gender`                            | Gênero do passageiro (Male/Female).                         |
| `Customer Type`                     | Tipo de cliente (Frequent flyer ou discontínuo).            |
| `Age`                               | Idade do passageiro.                                        |
| `Type of Travel`                    | Tipo de viagem (Negócios ou Pessoal).                       |
| `Class`                             | Classe do voo (Economy, Business, Eco Plus).                |
| `Flight Distance`                   | Distância do voo em milhas.                                 |
| `Inflight wifi service`             | Avaliação do serviço de Wi-Fi a bordo (0 a 5).              |
| `Departure/Arrival time convenient` | Comodidade dos horários de partida/chegada (0 a 5).         |
| `Ease of Online booking`            | Facilidade na reserva online (0 a 5).                       |
| `Gate location`                     | Satisfação com a localização do portão de embarque (0 a 5). |
| `Food and drink`                    | Avaliação de comida e bebida a bordo (0 a 5).               |
| `Online boarding`                   | Avaliação do processo de embarque online (0 a 5).           |
| `Seat comfort`                      | Conforto do assento (0 a 5).                                |
| `Inflight entertainment`            | Avaliação do entretenimento a bordo (0 a 5).                |
| `On-board service`                  | Avaliação geral do serviço a bordo (0 a 5).                 |
| `Leg room service`                  | Espaço para as pernas (0 a 5).                              |
| `Baggage handling`                  | Satisfação com o manuseio de bagagens (0 a 5).              |
| `Checkin service`                   | Qualidade do serviço de check-in (0 a 5).                   |
| `Inflight service`                  | Avaliação do serviço em voo (0 a 5).                        |
| `Cleanliness`                       | Avaliação da limpeza da aeronave (0 a 5).                   |
| `Departure Delay in Minutes`        | Atraso na partida, em minutos.                              |
| `Arrival Delay in Minutes`          | Atraso na chegada, em minutos.                              |
| `Satisfaction`                      | Variável alvo: `Satisfied` ou `Neutral or Dissatisfied`.    |


📎 Link do dataset: [Airline Passenger Satisfaction – Kaggle](https://www.kaggle.com/datasets/teejmahal20/airline-passenger-satisfaction)

OBS: O dataset `Airline Passenger Satisfaction` possui muitos dados fazendo com que leve muito tempo para treinar alguns modelos. Caso for necessário recomendamos diminuir a quantidade de dados para treinamento no intuito de tornar viável a execução do desafio


## 🚕 Dataset de Regressão: Taxi Price Prediction

Neste desafio, você irá trabalhar com o dataset Taxi Price Prediction, que traz registros de corridas de táxi com informações como horário da corrida, localização de origem e destino, número de passageiros e valor final da tarifa. Seu objetivo será aplicar diferentes técnicas de ensemble para prever o valor da corrida, explorando a performance dos métodos de **Bagging**, **Boosting**, **Voting** e **Stacking**.


### Principais colunas:

| Coluna                  | Descrição                                                          |
| ----------------------- | ------------------------------------------------------------------ |
| `Trip_Distance_km`      | Distância da corrida em quilômetros                                |
| `Time_of_Day`           | Período do dia da corrida (ex: Morning, Afternoon, Evening, Night) |
| `Day_of_Week`           | Tipo de dia (Weekday ou Weekend)                                   |
| `Passenger_Count`       | Número de passageiros na corrida                                   |
| `Traffic_Conditions`    | Condições de tráfego (Low, Medium, High)                           |
| `Weather`               | Condição climática durante a corrida (Clear, Rain, Snow)           |
| `Base_Fare`             | Tarifa base aplicada à corrida                                     |
| `Per_Km_Rate`           | Valor cobrado por quilômetro rodado                                |
| `Per_Minute_Rate`       | Valor cobrado por minuto de corrida                                |
| `Trip_Duration_Minutes` | Duração total da corrida em minutos                                |
| `Trip_Price`            | 💰 **Valor final da corrida** (variável alvo a ser prevista)       |


📎 Link do dataset: [Taxi Price Regression](https://www.kaggle.com/datasets/denkuznetz/taxi-price-prediction)