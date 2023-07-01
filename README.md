# Gitlcd

## Turn your Github contribution board into a simple LCD panel

<a href="https://www.buymeacoffee.com/mezantrop" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

Hopefully, we'll see results [here](https://github.com/idfreech)

### Usage

1. Setup passwordless Github connection to be able making pushes
2. Clone this repository into `/PATH/TO/gitlcd`
3. Using `crontab -e` command, add this line to your cron:

`59 23 * * * cd /PATH/TO/gitlcd && awk -f gitlcd.awk gitlcd.mtx > /dev/null`

Or create an Actions workflow:

```yml
name: Gitlcd
on:
  schedule:
    - cron: '59 23 * * *'
jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: Update the board
      run: bash -c "awk -f gitlcd.awk gitlcd.mtx > /dev/null"
```

Don't hesitate to ping me on any issue: Mikhail Zakharov <zmey20000@yahoo.com>
