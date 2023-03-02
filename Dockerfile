FROM node

WORKDIR /usr/fabian-nextjs-app

COPY package*.json C:\Users\Administrator\test\fabian-devops-training\fabian-nextjs-app

RUN npm install 

COPY . C:\Users\Administrator\test\fabian-devops-training\fabian-nextjs-app

RUN npm run build

COPY . C:\Users\Administrator\test\fabian-devops-training\fabian-nextjs-app

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "start" ]