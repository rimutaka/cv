# remove files that do not need to be deployed
# I do not know how to prevent them from being generated
rm -rf ./public/content
rm ./public/404.html
rm ./public/robots.txt
rm ./public/sitemap.xml
# push to S3
aws s3 rm s3://cv.rimutaka.me/ --recursive  --profile onebro && aws s3 cp ./public/  s3://cv.rimutaka.me/ --recursive  --profile onebro