#!/bin/bash
#Linux script for traffic generation

for (( ; ; ))
do
	firefox http://172.24.10.180 &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox http://172.24.10.150:8080 &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox www.arcyber.army.mil &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox www.foxnews.com &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox www.cnn.com &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox www.msnbc.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.wired.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.youtube.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.amazon.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.walmart.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.linkedin.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.nytimes.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.twitter.com &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox www.facebook.com &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox www.yelp.com &
	sleep 10
	kill -9 $(ps -x | grep firefox)
	firefox www.pinterest.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.tripadvisor.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.instagram.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.craigslist.org &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.ebay.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.indeed.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	firefox www.espn.com &
        sleep 10
        kill -9 $(ps -x | grep firefox)
	rm -rf ~/.mozilla ~/.cache/*
	sleep 5
done
