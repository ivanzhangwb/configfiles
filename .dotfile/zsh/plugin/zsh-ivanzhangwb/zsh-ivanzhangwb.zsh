
function gline() {
if [ -e /tmp/ssh_mux_login1.et2.alibaba.org_22_ivanzhang.zhangwb ]; then
  ssh ivanzhang.zhangwb@login1.et2.alibaba.org
else
  screen -R pub expect /Users/ivanzhangwb/bin/gossh ivanzhang.zhangwb@login1.et2.alibaba.org $(security find-generic-password -l 'ssh_login1.et2' -a 'ivanzhang.zhangwb' -w ivanzhangwb.keychain)
fi
}

