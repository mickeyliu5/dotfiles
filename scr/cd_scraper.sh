#!/bin/bash
if [ -z $1 ]; then
    echo "Specify a subdirectory of msgscrape"
    exit 1;
fi

prefix=~/mbig/scrape.git/msgscrape
dir=$1

#if [ $1 == 'git' ]; then
    #prefix=~/mbig/
#fi

# Second and third git workdirs
if [[ $2 == '2' ]]; then
    prefix=~/mbig/secondscrape.git/msgscrape
elif [[ $2 == '3' ]]; then
    prefix=~/mbig/thirdscrape.git/msgscrape
fi

# Special directories
if [ $dir == 'scrpxbsvc' ]; then
    dir=pcs_xb_mapping/$dir
elif [ $dir == 'scrpxbdb' ]; then
    dir=pcs_xb_mapping/db
fi
#elif [ $dir == 'msg' ]; then
    #dir=""
#fi

eval cd $prefix/$dir
