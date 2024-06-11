
## for WSL2
## PREPARE
##    wsl --install # install WSL
##    wsl --set-version 2 # use WSL2
##    wsl # run WSL2 with Ubuntu
which git || (echo you have to install git. like \`sudo apt install git-all\` ; exit 1) || exit $?
which apt || (echo you have to have 'apt' ; exit 1) || exit $? 

# apt install some # I forgot its name.
# when gcc is error, try it: apt install -y ca-certificates curl gnupg lsb-release
apt install make gcc libx11-dev libxext-dev
git clone https://github.com/42Paris/minilibx-linux.git minilibx
cd minilibx
make
cp mlx.h /usr/local/include/
cp libmlx_Linux.a /usr/local/lib/libmlx_Linux.a
