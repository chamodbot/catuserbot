FROM chamodbot/myassistantbot:slim-buster

#clonning repo 
RUN git clone https://github.com/chamodbot/myassistantbot.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install --no-cache-dir requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
