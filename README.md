### DI-project

A short project - 1 hour - to create a class that parses a CSV file and produces some basic analytics.

The CSV will is in the following format.

|Country code|Year|Index Score|
|---|---|---|
|AB|2000|0.345|
|AB|2001|0.457|
|...|...|...|
|ZA|2013|0.289|

The class can produce a list of years and scores for a given county and produce an average score for a given country

### To use

Clone the project, move into it and then open up the Ruby REPL
```
$ git clone git@github.com:gerauf/di-project.git
$ cd di-project
$ irb
```

Require the correct files
```
$ load 'lib/scores.rb'
```

To use create a new instance of scores passing it the file you want to parse on instantiation
```
$ scores = Scores.new(./climate-vulnerability.csv)
```

Use the public methods to list and average for particular country codes - e.g.
```
$ scores.list('GB')
$ scores.average('ES')
```
#### To run tests

Install bundle (Ruby dependency manager) if not already on the system and run it.
```
$ gem install 'bundle'
$ bundle
```

Run rspec
```
$ rspec
```
