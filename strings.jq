module {
  "name": "strings",
  "description": "Utility functions that pertain to strings",
  "author": "Travis C. LaGrone",
  "email": "travis.lagrone@trintech.com",
  "company": "Trintech"
};


def ltrimstr:
  capture("^\\s*(?<content>.*)") | .content ;


def rtrimstr:
  capture("(?<content>.*)?\\s*$") | .content ;


def trimstr($prefix; $suffix):
  if (startswith($prefix) and endswith($suffix))
  then ltrimstr($prefix) | rtrimstr($suffix)
  else .
  end ;


def trimstr:
  capture("^\\s*(?<content>.*)?\\s*$") | .content ;
