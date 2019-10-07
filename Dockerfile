#FROM ubuntu:16.04i
FROM danielrbroad/pysamdocker
MAINTAINER saimukund "saimukund@wustl.edu"

# Adding Xenosplit python code
ADD Xenosplit.py /opt/
