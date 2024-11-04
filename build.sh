#!/bin/sh

cd frontend
npm i
npm run build

cd ..
cd backend
echo "Backend"

rm -fr web/html/*
cp -R ../frontend/dist/* web/html/

go build -o ../sui main.go
