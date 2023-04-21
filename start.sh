if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Moviezclubhouse/Ramanan.git /Ramanan
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ramanan
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Ramanan...."
python3 bot.py
