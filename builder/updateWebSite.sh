hugo -D
cp -avr public/* ..
git add . && git commit -m "Update website"
git push origin master
