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
asdf install ruby 3.1.2
```

cd into repository clone, then run the following:

```
bundle install
rails db:create db:migrate db:seed
bin/dev
```
