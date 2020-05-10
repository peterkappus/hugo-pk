# hugo-pk
My new(ish), personal, static website built with Hugo, SASS, ACE Templates, Bootstrap, and a bunch of other stuff.

**NOTE:** Hugo stopped supporting Ace templates in version 0.62 https://github.com/gohugoio/hugo/issues/6609 If you need/want to upgrade hugo beyond this version, you will have to port all the templates to Go Templates.


## Setup
1) Sym link the homepage headshot to the one in the Contact folder (to save some space... not sure this is reallly necessary) `ln -s content/contact/head3.jpg content/head3.jpg`

## Development

### Using Docker
The last version of Hugo which supports Ace template is 0.50. To support sass compilation, we need the "extended" version of hugo so `klakegg/hugo:0.50-ext`

```
docker run --rm -it -v "$(pwd)":/src -p 1313:1313 klakegg/hugo:0.50-ext server --disableFastRender --navigateToChanged --bind=0.0.0.0 --gc --noHTTPCache 
open http://localhost:1313
```

### Deployment
Copy `secrets.sample.env` to `secrets.env`
Add your AWS ID and secret key.
Verify the bucket name in `deploy.sh`
Run `./deploy.sh` to generate the site and deploy it.

#### Deploying without Docker
You can install `s3cmd` locally and run the following:
```
hugo
s3cmd sync  -r --delete-removed -P --exclude=.git* public/ s3://www.peterkappus.com
```

### Creating new content (posts, etc.)
`docker run -v "$PWD":/src klakegg/hugo:0.50-ext new blog/<POST-TITLE>/index.md`

### Adding cover images
[Unsplash](https://unsplash.com/) has great, free images.
- Find a picture...
- Download it into the blog post folder
- Copy the "Photo by..." line they give you.
- Paste it into the front matter.
- Then click on it, and click the "Share" button
Copy the URL they give you and put this in the "link" attribute in the front matter.

### Tips

Want to browse from your mobile device? Assuming your local IP (found via `ifconfig`) is 192.168.0.10 you could start the server as follows
`docker run --rm -it -v "$PWD":/src -p 1313:1313 klakegg/hugo:0.50-ext server -D --bind 192.168.0.10 --baseURL http://192.168.0.10` and navigate to http://192.168.0.10 from your phone.


## Contact form
Uses [Formspree](https://formspree.io/).

## Domains
The `peterkappus.com` and `kapp.us` domains are both registered on GoDaddy but using Route 53 name servers (AWS).

The `kapp.us` domain uses GoDaddy's "Domain forwarding" feature to forward requests to `www.peterkappus.com`. `www.peterkappus.com` is hosted from an Amazon Cloudfront instance using an S3 Bucket as the origin. A few times now, I've had to log into GoDaddy and "re-enable" the domain forwarding to make `kapp.us` forward properly. What a PITA.


## HTTPS Certificates
REMINDER: You've got a [private gist](https://gist.github.com/peterkappus) with a script.

Otherwise, follow this guide:
https://medium.com/@richardkall/setup-lets-encrypt-ssl-certificate-on-amazon-cloudfront-b217669987b2

If you use docker, make sure to use a python:2 image. The LE script isn't compatible w/ python 3

## Other stuff...

### Git workflow

```
#create a new 'working' branch for experimentation
git checkout -b working

#auto-commit to this new branch every 2min
watch -n 120 git commit -am autosave

#ready to merge & commit to master?

#switch back to master
git checkout master

#squash all commits from the "working" branch into changes on this one
git merge --squash working

#commit these changes with a meaningful commit comment
git commit -am "My useful comment about this new feature"

# delete the old working branch
git branch -d working
```

### Converting SVG to JPG
`cat infile.svg | docker run -i dbtek/librsvg rsvg-convert -f png -w 1600 > outfile.png`

### Image manipulation
This isn't necessary anymore now that I'm using the built-in resource (image cropping) tools within hugo. But in case you ever need to do it with ImageMagick, here you go:

- Resize images for web use:
```
convert infile.png  -quality 80 -define jpeg:extent=150kb -resize "1920x1920>" outfile.jpg
```

- Keep full size images in the "big_pics" folder.
- To resize them for web use, copy them to a folder, then from within the folder try something like this:


    cp -r raw_pix static/images/big_pics
    cd static/images/big_pics
    find . | grep -E "g$" | xargs mogrify -quality 80 -define jpeg:extent=150kb -resize "960x960>"

This will find all the jpg and png images (anything ending with "g") and resize the ones which are bigger than 960 square.

### Bulk renaming stuff...
You could do this to replace .png.jpg with .jpg extensions.

    find . | grep -E ".png.jpg$" | sed -e 'p;s/png.jpg/jpg/'| xargs -n2 mv

but perl regexes are more powerful...This removes dates (e.g. 2014-25-2...) from in front of post-names (e.g. if you exported from WordPress)

    ls * | perl -pe 's/^[\d-]+?//g'
