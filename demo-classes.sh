make
if [ ! -e text8 ]; then
  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
  gzip -d text8.gz -f
fi
if [ ! -e classes.txt ]; then
  time ./word2vec -train text8 -output classes.txt -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 20 -iter 15 -classes 500
fi
if [ ! -e classes.sorted.txt ]; then
  sort classes.txt -k 2 -n > classes.sorted.txt
fi
echo The word classes were saved to file classes.sorted.txt
