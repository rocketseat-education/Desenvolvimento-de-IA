#!/bin/bash
curl -X POST http://localhost:5000/predict \
-H "Content-Type: application/json" \
-d '{
  "Genero_Masculino": 1,
  "Idade": 48,
  "Historico_Familiar_Sobrepeso": 1,
  "Consumo_Alta_Caloria_Com_Frequencia": 1,
  "Consumo_Vegetais_Com_Frequencia": 0,
  "Refeicoes_Dia": 2,
  "Consumo_Alimentos_entre_Refeicoes": 0,
  "Fumante": 0,
  "Consumo_Agua": 2,
  "Monitora_Calorias_Ingeridas": 0,
  "Nivel_Atividade_Fisica": 0,
  "Nivel_Uso_Tela": 2,
  "Consumo_Alcool": 1,
  "Transporte_Automovel": 1,
  "Transporte_Bicicleta": 0,
  "Transporte_Motocicleta": 0,
  "Transporte_Publico": 0,
  "Transporte_Caminhada": 0
}'