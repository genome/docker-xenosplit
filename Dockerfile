#FROM ubuntu:16.04i
FROM conda/miniconda3
MAINTAINER saimukund "saimukund@wustl.edu"

RUN apt-get update
RUN apt-get install -y vim-tiny libnss-sss
RUN pip install --upgrade pip

# Fundamentals
RUN pip install --upgrade numpy pysam==0.14.1
RUN pip install RSeQC


RUN apt-get clean all && rm -rf /var/lib/apt/lists/*

# Adding Xenosplit python code
ADD Xenosplit.py /opt/
