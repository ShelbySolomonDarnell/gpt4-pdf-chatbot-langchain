FROM debian:bookworm-slim as dbx-gpt4-langchain

# install app dependencies
RUN apt update  && apt -y upgrade
RUN apt install -y zsh vim-gtk3 curl 
RUN curl -fsSL https://deb.nodesource.com/setup_19.x
RUN apt update
RUN apt install -y nodejs npm
RUN npm install @pinecone-database/pinecone -g
# RUN apt install -y yarn # version 0.1 incorrect
RUN npm install yarn -g # version 0.2