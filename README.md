# Starvy-Ramsey
Backend Ruby on rails server for Starvy app
![gordon-ramsay-net-worth](https://cloud.githubusercontent.com/assets/5790854/18618244/82e7fc00-7db0-11e6-8366-3184ea619bde.jpg)
## Setup
To use ruby you must use the Ruby Virtual Environment (RVM)
```
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
```
Verify that your installation is successful:
```
type rvm | head -n 1
rvm is a function
```

Clone this repo and go to the cloned directory
```
git clone https://github.com/c9dong/Starvy-Ramsey
```

Install ruby 2.2.2
```
rvm install 2.2.2
rvm use 2.2.2 --default
```

Install bundler
```
gem install bundler
```

Install ruby dependencies
```
bundle install
```

Install ruby server dependencies
```
cd server
bundler install
```
## Run
```
rails server
```
go to `localhost:3000`
