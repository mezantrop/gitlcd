# Gitlcd

## Turn your Github contribution board into a simple LCD panel

<a href="https://www.buymeacoffee.com/mezantrop" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

![stopwar](https://mezzantrop.files.wordpress.com/2023/03/2023-03-06.png)

### Usage

1. Setup passwordless Github connection to be able making pushes
2. Clone this repository into `/PATH/TO/gitlcd`
3. Using `crontab -e` command, add this line to your cron:

`59 23 * * * cd /PATH/TO/gitlcd && awk -f gitlcd.awk gitlcd.mtx > /dev/null`

Or use Actions workflow to automate the thing

Don't hesitate to ping me on any issue: Mikhail Zakharov <zmey20000@yahoo.com>
