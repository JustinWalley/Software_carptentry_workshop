echo Cleaning up
rm *.txt
rm *.tmp
rm *.csv

echo Download data
curl -L https://github.com/zonca/swcarpentry-workshop-pandas/raw/master/rawdata/rawdata.zip -o rawdata.zip

echo unpack data
unzip rawdata.zip

rm rawdata.zip

echo remove tmp
rm *.tmp

for f in *.txt
do
	mv $f ${f/txt/csv}
done

echo Available files
ls 