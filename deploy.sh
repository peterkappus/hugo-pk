#generate the files
docker run --rm -it -v "$PWD":/src -v "$PWD"/public:/target klakegg/hugo:0.50-ext

# create this file using secrets.sample.env and add your AWS credentials
source secrets.env

#upload and set permissions, remove deleted files
#flags:
# --size-only (don't copy files if the size is the same in both places...faster but might miss some files (e.g. if you're only updating the year in the footer)
# --exact-timestamps (use if size is the same but you still need to update)
docker run -v "$(pwd)"/public:/data --env AWS_ACCESS_KEY_ID=$AWS_ID --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET garland/aws-cli-docker aws s3 sync . s3://www.peterkappus.com --delete --size-only --acl=public-read --exclude=".git*"
#docker run -v "$(pwd)"/public:/data --env AWS_ACCESS_KEY_ID=$AWS_ID --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET garland/aws-cli-docker aws s3 sync . s3://www.peterkappus.com --delete --exact-timestamps --acl=public-read --exclude=".git*"

source secrets.env && docker run -v "$(pwd)"/public:/data --env AWS_ACCESS_KEY_ID=$AWS_ID --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET garland/aws-cli-docker aws cloudfront create-invalidation --distribution-id EVU06526BKPXZ --paths "/index.html" "/blog/*" "/css/main*" "/okrs/*"
