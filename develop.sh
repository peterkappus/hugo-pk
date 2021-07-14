docker run --rm -it -v "$(pwd)":/src -p 1313:1313 klakegg/hugo:0.50-ext server --disableFastRender --navigateToChanged --bind=0.0.0.0 --gc --noHTTPCache
