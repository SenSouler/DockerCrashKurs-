FROM node:26-bookworm
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 5173
CMD ["run", "dev", "--", "--host", "0.0.0.0"]
ENTRYPOINT ["npm"]