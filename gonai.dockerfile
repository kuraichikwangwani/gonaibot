FROM rasa/rasa:2.8.0-full

WORKDIR /app

RUN git clone https://github.com/RasaHQ/rasa-stack-quickstart.git .

RUN rasa train

CMD ["rasa", "run", "-m", "models", "--enable-api", "--cors", "*", "--debug"]