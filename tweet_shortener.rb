# Write your code here.

  
def dictionary 
  dictionary = {
    "hello" => 'hi',
    "to"=> "2",
    "too"=> "2",
    "two" => "2",
    "for"=>"4",
    "four" => "4", 
    "For"=>"4",
    "Four" => "4",
    'be' => "b",
    'you'=> "u",
    "at" =>"@",
    "and" => "&",
    }
end 


def word_substituter (tweet)
  tweet = tweet.split(" ")
  
  tweet.collect do |word|
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

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    tweet
  end   
end   

def shortened_tweet_truncator (tweet)
  if tweet.length > 140
    tweet = tweet[0..137]
    "#{tweet}..."
  end   
end   
