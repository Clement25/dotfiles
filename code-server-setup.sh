echo "Installing code-server"
cd 
mkdir code-server
release=https://github.com/cdr/code-server/releases/download/2.preview.9-vsc1.37.0/code-server2.preview.9-vsc1.37.0-linux-x86_64.tar.gz
wget -qO- $release  | tar xvz --strip-components=1 -C ~/code-server
echo "alias 'code'='~/code-server/code-server'" >> .bashrc
source .bashrc

echo "Successful installed code server"
