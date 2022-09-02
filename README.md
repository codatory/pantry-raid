# README

## Fedora 36 Development Setup
```
sudo dnf groupinstall "Development Tools" "C Development Tools and Libraries"
sudo dnf install libpq libpq-devel postgresql postgresql-server
sudo postgresql-setup --initdb
sudo systemctl enable --now postgresql.service
cd /
sudo createuser -s `whoami`
cd
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
source ~/.bashrc
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 3.1.2
```

## MacOS Development Setup
- Install command-line development tools with `xcode-select --install`
- Install https://postgresapp.com & Initialize
- Install https://brew.sh

```
sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp
brew install openssl@1.1 readline libyaml asdf libpq
echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >> ~/.zshrc
echo 'export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"' >> ~/.zshrc
echo ". /opt/homebrew/opt/asdf/libexec/asdf.sh" >> ~/.zshrc
source ~/.zshrc
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 3.1.2
```

## App Initialization
From the app directory:
```
bundle install
bin/rails db:create db:migrate db:seed
bin/dev
```
