curl -X 'POST' \
  'http://127.0.0.1:8000/classify' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
    "A_id": 4,
    "Size": 1.36421682,
    "Weight": -1.296611877,
    "Sweetness": -0.384658206,
    "Crunchiness": -0.55300577,
    "Juiciness": 3.030874354,
    "Ripeness": -1.303849429,
    "Acidity": 0.501984036
}'