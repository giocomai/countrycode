library(devtools)
document()

countrycode_data = read.csv('data/countrycode_data.csv', stringsAsFactors=FALSE, na.strings='')
colnames(countrycode_data)[1] = 'country.name'
countrycode_data$iso2c[countrycode_data$country.name=='Namibia'] = 'NA'
countrycode_data$regex = iconv(countrycode_data$regex, to='UTF-8')
save(countrycode_data, file='data/countrycode_data.rda')
