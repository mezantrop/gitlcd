# Gitlcd - Use your Gitlab contribution board as a simple LCD panel

# ------------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <zmey20000@yahoo.com> wrote this file. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer in return.    Mikhail Zakharov
# ------------------------------------------------------------------------------

# v1.0  2022.02.27  God save Ukraine


BEGIN {
    Hl = 2                  # Header length
    Do = Hl + 1             # Data offset
    MX = 53                 # Maximum X
    MY = 7                  # Maximum Y
    MN = 5                  # Maximum N
    d[1] = "X: "; d[2] = "Y: "
    script_file = ARGV[1]
    log_file = ARGV[1]".log"
}

/^X:/           {x = X = $2 > MX ? 1 : $2} 
/^Y:/           {y = $2; if (y < MY) {Y = y + 1} else {Y = 1; X++}}
x && y && /XY/  {y = y + NR; d[1] = d[1]X; d[2] = d[2]Y}
NR == y         {n = $(x + 1); if (n < 0) n = 0; if (n > MN) n = MN}
NR > Hl         {d[Do++] = $0}

END {
    if (!x || !y) exit 10
    for (i = 1; i < Do; i++) print d[i] > script_file

    for (i =1; i <= n; i++) {
        printf "Future: X: %d Y: %d Current: N: %d\n", X, Y, n >> log_file
        system("git add gitlcd.* && git commit -m \"new commit\" && git push")
    }
    exit n
}
