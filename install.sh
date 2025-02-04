#!/data/data/com.termux/files/usr/bin/bash
echo -e "\n[tool] installer for instahack by Termux Hackers ID\n"
echo -e "\n[wait] running pkg update and pkg upgrade ...\n"
pkg update -y && pkg upgrade -y
echo -e "\n[info] installing new repository: tur-repo ...\n"
pkg install tur-repo -y && pkg update -y
echo -e "\n[info] installing package and dependencies ...\n"
pkg install git rust libffi libsodium binutils build-essential python3.10 -y
echo -e "\n[info] installing module and requirements ...\n"
pip3.10 install --upgrade pip && pip3.10 install wheel && pip3.10 install -r requirements.txt
