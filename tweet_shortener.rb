# Write your code here.

  
def dictionary 
  dictionary = {
    "hello" => "hi",
    "to"=> '2',
    "two"=> '2', 
    "too"=> '2', 
    "for"=> '4',
    "four"=> '4',
    "be"=> 'b',
    'you' => 'u',
    "at"=> "@",
    "and"=> "&"
  }
end 


def word_substituter (tweet)
  tweet = tweet.split(" ")
  
  tweet.each do |word|
  dictionary.collect do |k,v|
  if k == word
  word.replace(v)
  end 
end 
end 
  tweet.join(" ")
end


def bulk_tweet_shortener (arr_of_tweets)
  arr_of_tweets.collect do |tweet|
  puts word_substituter(tweet)
  end
end 
