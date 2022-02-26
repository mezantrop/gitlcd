/X:/    { x = 1 }
/Y:/    { y = 2 }

x && y && /XY/ { y = y + NR; LCD=1 }
LCD && NR == y { print $(x+1) }

