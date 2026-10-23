FROM node:18 AS builder

WORKDIR /app

COPY . . 

RUN npm install 

CMD ["node","src/index.js"]

FROM node:18-slim 

WORKDIR /app

COPY --from=builder . .

CMD ["node","src/index.js"]

 


