From node:19.4

ENV DEV_DATABASE_URL="postgres://admin:password@postgressql/dev_db" \
    TEST_DATABASE_URL="postgres://admin:password@postgressql/test_db" \
    DATABASE_URL="" 

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node","app.js"]
