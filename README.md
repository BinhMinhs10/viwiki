# viwiki datasets

Wikipedia dump 07-2022

## Generate the dataset manually

```bash
wget https://dumps.wikimedia.org/viwiki/20220710/viwiki-20220701-pages-articles-multistream.xml.bz2
bzip2 -d viwiki-20220701-pages-articles-multistream.xml.bz2
python WikiExtractor.py --no-templates --lists viwiki-20220701-pages-articles-multistream.xml
```

Extract and clean text from wikipedia
```python
python3 WikiExtractor.py --help
```

* `-s` - preserve sections
* `--lists` - preserve lists
* `--no-templates` - Do not expand templates
* `--json` - write output in json format instead of the default one

## Merge to single file
```bash
cat text/AA/wiki_*.txt > wiki_AA.txt
```

## Citation

@misc{Wikiextractor2015,
  author = {Giusepppe Attardi},
  title = {WikiExtractor},
  year = {2015},
  publisher = {GitHub},
  journal = {GitHub repository},
  howpublished = {\url{https://github.com/attardi/wikiextractor}}
}