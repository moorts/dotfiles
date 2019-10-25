# Getting stow + unpacking it
curl http://artfiles.org/gnu.org/stow/stow-latest.tar.gz --output stow-latest.tar.gz
mkdir stow-latest
tar -xvzf stow-latest.tar.gz -C ./stow-latest --strip-components=1
rm -rf stow-latest.tar.gz

cd stow-latest
# Installing dependencies:
dpkg -l | grep -qw perl || sudo apt-get install perl
cpan Test::More
cpan Test::Output

sh ./configure
sudo make install

cd ..
stow vim
stow zsh

