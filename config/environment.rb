require 'bundler'
Bundler.require

DB = {
  conn: SQLite3::Database.new('db/twitter.db')
}


DB[:conn].results_as_hash = true

# [{id: 1, name: "Pikachu", type: "electricity"}, [2, 'Squirtle', 'water'] ]
require_relative '../lib/tweet.rb'
require_relative '../lib/tweets_app.rb'
