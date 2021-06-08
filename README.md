# Crawling@Home Lite Worker
A lightweight version of the Crawling@Home worker script, suitable for single-cored instances with 2GB of ram.

## OBSOLETE! Use [@rvencu's worker instead](https://github.com/rvencu/headless-crawlingathome)

### With thanks to [@christophschuhmann](https://github.com/christophschuhmann) for developing the worker code, as well as the core script.
NOTE: The core script (referred to as `main.py`) is not currently provided here, as it contains Google Drive API keys.

## Prerequisites
* Ubuntu 20.04
* A (very) fast internet connection
* Your `main.py` downloaded, and in the current directory when executing `run.sh`.

## Usage
* Run `setup.sh` only once. This should setup your environment to run the crawler.
* Run `run.sh` to run the main crawler. The crawler runs as a background process, which you can find its ID by using `screen -ls`. You can then use `screen -r <ID>` to connect to its terminal to view its progress, although it may be better to view the [Crawling@Home Dashboard](http://crawlingathome.duckdns.org/) instead.

