wget https://dumps.wikimedia.org/viwiki/20220710/viwiki-20220701-pages-articles-multistream.xml.bz2
bzip2 -d viwiki-20220701-pages-articles-multistream.xml.bz2
python WikiExtractor.py --no-templates -s --lists viwiki-20220701-pages-articles-multistream.xml
