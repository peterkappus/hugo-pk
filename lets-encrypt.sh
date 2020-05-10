# Run: docker run -it python:2.7.15 bash

#Insert your AWS credentials below but DO NOT SAVE. :)

#copy & paste everything into the console in your docker session
pip install letsencrypt && pip install letsencrypt-s3front

export AWS_ACCESS_KEY_ID=<!!YOUR_AWS_ID!!!!>
export AWS_SECRET_ACCESS_KEY=<!!!AWS_KEY!!!!>


letsencrypt --agree-tos -a letsencrypt-s3front:auth \
-i letsencrypt-s3front:installer \
--letsencrypt-s3front:auth-s3-bucket www.peterkappus.com \
--letsencrypt-s3front:auth-s3-region eu-west-1 \
--letsencrypt-s3front:installer-cf-distribution-id EVU06526BKPXZ -d www.peterkappus.com \
--renew-by-default --text
