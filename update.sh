systemctl stop Fline
cd .fline
ls -lah
rm -r backups ; rm -r database ; rm -r banlist.dat ; rm -r blocks ; rm -r budget.dat ; rm -r chainstate ; rm -r db.log ; rm -r debug.log ; rm -r fee_estimates.dat ; rm -r .lock ; rm -r mncache.dat ; rm -r mnpayments.dat ; rm -r peers.dat ; rm -r sporks ; rm -r zerocoin
cd
wget https://github.com/flinecoin/coin/releases/download/v1.0.3/fline-linux-daemon-1.0.3.tgz
tar xvfz fline-linux-daemon-1.0.3.tgz
chmod +x fline*
mv fline-cli /usr/local/bin
mv flined /usr/local/bin
wget https://github.com/flinecoin/coin/releases/download/v1.0.3/bootstrap_fline.zip
unzip bootstrap_fline.zip -d .fline
rm -rf bootstrap_fline.zip
systemctl start Fline