# History Board Backend

This is the repository for the history board backend Rails application.

## Ruby version

2.2.0 is specified. You *will* want to use [RVM](http:/rvm.io "RVM") to manage your Ruby version rather than apt-get or the system version on Mac. RVM works fine on Mac and Linux.  
If you're using Windows, a virtual machine runnning Linux is advised as configuring things like RVM can be pretty tricky on Windows.

## Getting set up

To get a local copy of this repository you will need to run the following:
```bash
$ git clone http://gitlab.scss.tcd.ie/group-project-2015/history-board_backend.git
```
Once you have Ruby 2.2.0 installed via RVM you will then need the Bundler gem.  
To install it run:
```bash
$ gem install bundler
```
For image upload we need Imagemagick. On Ubuntu this can be installed by running:
```bash
$ sudo apt-get install libmagickwand-dev
```
On Mac this can be installed from Homebrew using:
```bash
$ brew install imagemagick
```
Now you can navigate to the project directory and install the necessary gems.
```bash
$ cd history-board_backend
$ bundle install --path vendor/bundle
```
The last step is to set up the database.
```bash
$ bundle exec rake db:migrate
```

## Development server

To start running a simple development server run the command
```bash
$ bundle exec rails server
```  
Now you can access the server at `localhost:3000`

Be aware that using bundler means that `bundle exec` must go before commands such as `rails generate`, `rails server` or `rake db:migrate`
