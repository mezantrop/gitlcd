# Gitlcd

## Use your Gitlab contribution board as a simple LCD panel

Hopefully, we'll see results [here](https://github.com/idfreech)

### Usage

1. Setup passwordless Github connection to be able making pushes
2. Clone this repository into `/PATH/TO/gitlcd`
3. Using `crontab -e` command, add this line to your cron:

`59 23 * * * cd /PATH/TO/gitlcd && awk -f gitlcd.awk gitlcd.mtx > /dev/null`

Don't hesitate to ping me on any issue: Mikhail Zakharov <zmey20000@yahoo.com>
