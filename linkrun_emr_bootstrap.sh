#! /bin/bash

sudo yum install -y git
sudo python3 -m pip install ujson
sudo python3 -m pip install tldextract
sudo python3 -m pip install boto3

export PYSPARK_PYTHON=python3

cd ~

echo 'export PYSPARK_PYTHON=python3' > envvar.sh
echo 'git clone https://github.com/trendsci/linkrun.git' > gitclone.sh
chmod +x gitclone.sh
chmod +x envvar.sh

echo "done bootstrap" > bootstrap.txt
echo `date` >> bootstrap.txt

