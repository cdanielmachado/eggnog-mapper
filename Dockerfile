FROM ubuntu

RUN apt-get update && apt-get install -y python wget
ADD . eggnog-mapper
WORKDIR eggnog-mapper
RUN python download_eggnog_data.py -y bact
# RUN python setup.py install
RUN python emapper.py -i test/polb.fa --output polb_bact -d bact
