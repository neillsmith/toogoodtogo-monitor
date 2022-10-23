FROM node:alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./
RUN npm run build
ENTRYPOINT ["/app/entrypoint.sh"]
#CMD npm start -- --email smith.neill+toogoodtogo@gmail.com --discord https://discord.com/api/webhooks/1032645837202927687/ROHKQUo4LmFwolcEMjKHeGOzTvbpeepzzT8ys5CKF3897_UqO5DFXObhbALmdtKHrMgv
#ENTRYPOINT ["npm", "start"]
