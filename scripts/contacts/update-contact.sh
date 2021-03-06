#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contacts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contact": {
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'",
      "email": "'"${EMAIL}"'",
      "company": "'"${COMPANY}"'",
      "position": "'"${POSITION}"'"
    }
  }'
