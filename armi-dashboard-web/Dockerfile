FROM alpine/git
WORKDIR /app

# make ssh dir
RUN mkdir /root/.ssh

# add ssh private key
COPY id_rsa /root/.ssh/id_rsa
#create known_hosts
RUN touch /root/.ssh/known_hosts
# add github key 
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts
RUN git clone -b dev git@github.com:TysonLain/armiTech-dashboard.git


FROM node

COPY --from=0 /app/armiTech-dashboard  /app

WORKDIR /app

RUN rm node_modules -rf
RUN npm install;

RUN npm run build-dev


EXPOSE 3000

CMD ["npm","run","start"]