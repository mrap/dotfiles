alias cvim_server='python3 $yadr/chrome/chromium-vim/cvim_server.py'
if [ `psas cvim_server | wc -l` -lt 2 ]; then
  cvim_server &
fi
