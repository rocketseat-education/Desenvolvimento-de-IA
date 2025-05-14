curl -X 'POST' \
  'http://127.0.0.1:8000/classify' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
    "A_id": 5,
    "Size": -3.425399755,
    "Weight": -1.409082204,
    "Sweetness": -1.913511195,
    "Crunchiness": -0.555774864,
    "Juiciness": -3.85307147,
    "Ripeness": 1.914615916,
    "Acidity": -2.981523169
}'