import re

fn1='time-series-countries.txt'
fn2='date-India-confirmed-recovered-dead.csv'
fh1=open(fn1)
fh2=open(fn2,'w')
for l in fh1:
    print(re.search('([0-9]+-[0-9]+-[0-9]+,)India,,.+,(0,0,0)'))
    
