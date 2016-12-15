FROM ubuntu

RUN apt-get update && apt-get install -y python wget
COPY . /
VOLUME /data
EXPOSE 51600
CMD python download_eggnog_data.py -y bact && python emapper.py -d bact --cpu 10 --servermode
