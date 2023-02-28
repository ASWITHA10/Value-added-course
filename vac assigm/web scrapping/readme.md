# Scraping Top Subscribed Youtube channel from tastyedits

This is a simple R script that scrapes the top Subscribed Youtube channel from the Taastyedits website and saves them into a CSV file. The script uses the `robotstxt`, `dplyr`, and `rvest` R packages to scrape the website and extract the song data.

## Usage

To use this script, you will need to have R installed on your computer, as well as the `robotstxt`, `dplyr`, and `rvest` packages. Once you have these installed, simply run the `tops_subs.r` script in RStudio or on the command line to scrape the data.

The script will output a CSV file called `top_subs.csv` with the following columns:

- `rank`: The current rank of the channel on the tastyedits chart
- `channel`: The name of the channel
- `subs`: The total subs of the channel is displayed
