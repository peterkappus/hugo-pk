#generate the files
docker run --rm -it -v "$PWD":/src -v "$PWD"/public:/target klakegg/hugo:0.50-ext

# create this file using secrets.sample.env and add your AWS credentials
source secrets.env

#upload and set permissions, remove deleted files
#NOTE: this uses only SIZE as the differentiator
#this prevents all files being re-uploaded each time we generate a new copy of the site by running hugo above
docker run -v "$(pwd)"/public:/data --env AWS_ACCESS_KEY_ID=$AWS_ID --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET garland/aws-cli-docker aws s3 sync . s3://www.peterkappus.com --delete --size-only --acl=public-read --exclude=".git*"

source secrets.env && docker run -v "$(pwd)"/public:/data --env AWS_ACCESS_KEY_ID=$AWS_ID --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET garland/aws-cli-docker aws cloudfront create-invalidation --distribution-id EVU06526BKPXZ --paths "/index.html"
