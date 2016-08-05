1. Take a look at the code that's in this directory. Answer the following questions:
  * What is a Gemfile?
  * What's the purpose of the `environment.rb` file in the `config` directory?
  * What's the purpose of the `console.rb` file? Why might that be useful?
  * We have a database called `tweets.db`. Given what you've seen in the code, how might we execute SQL statements on this DB?
  * Our `Tweet` has an initialize method. How many arguments does it take?

Create
  ```ruby
  tweet = Tweet.new({message: 'Really good coffee', username: 'donaldjtrump'})
  tweet.save #=> actually save the row
  tweet.id #=> 14
  ```
Read
* SELECT * FROM tweets;
  - `Tweet.all`
  - `Tweet.find(1)`
  - `Tweet.find_by_username('coffeedad')`
  - `Tweet.where({name: 'coffeedad'})`
    #=> [lots of tweets here]
Update
Destroy

2. Write a method on our tweet class called `find` that takes in an ID number as an argument and returns an instance of our Tweet class that corresponds with that row in the database.
For example:

```ruby
  tweet = Tweet.find(1)
  #=> #<Tweet:0x007fcee3bf9870 @id=1, @message="good coffee", @username="coffeedad">
```


3. Change our `save` method so that if the tweet already exists in the database, we edit the existing row. If it doesn't exist in the database, we create a new row.

```ruby
tweet = Tweet.new
tweet.username = 'cher'
tweet.message = 'Something weird'
tweet.id #=> nil
tweet.save
tweet.id #=> 2
tweet.message = 'Something else weird'
tweet.save
tweet.id #=> 2 Should be the same row in the database
```
