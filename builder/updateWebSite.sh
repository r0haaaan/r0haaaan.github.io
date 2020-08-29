hugo -D
cp -avr public/* ..
cd ..
git add . && git commit -m "Update website"
git push origin master
