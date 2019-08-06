# ImageLoader

Loading images:

Images to be registered in PathDB must reside somewhere in the QuIP main images folder.  The folder container images to be registered to PathDB must contain the appropriate manifest file.
Take a look at sample.csv in this repository for the required fields and format of the csv manifest file.
```
docker exec -it quip-imageloader imageloader -src <full path to manifest file> -collectionname <my collection> -username <username> -password <password>
```

The collection must be created before any images are loaded, otherwise, the loader will throw an error.

Loading map files:

Map files to be loaded must reside somewhere in the main QuIP data folder.  This folder must contain the appropriate manifest file.
```
docker exec -it quip-imageloader maploader -src <full path to manifest file> -collectionname <my collection> -username <username> -password <password> -type <TIL or Pyradiomics>
```
