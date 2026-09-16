# 宏: function dtkiller:config/scan_forceload with storage dtkiller:config arena
# 强加载竞技区所在区块，保证扫描期间方块可读、marker 不被卸载
$forceload add $(x1) $(z1) $(x2) $(z2)
return 0
