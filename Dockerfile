FROM debian:bookworm-slim
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.41.0/install.sh | bash
RUN nvm install 26
WORKDIR /app
COPY . .
RUN npm install
CMD ["run", "dev"]
ENTRYPOINT ["npm"]