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
 tweet.gsub(/\w+/) do |w|
  dictionary.fetch(w,w)
  end
end 

def bulk_tweet_shortener (arr_of_tweets)
result = []
  arr_of_tweets.collect do |tweet|
     tweet.gsub(/\w...+/) do |w|
     result.push(dictionary.fetch(w,w))

  end
end
puts result.join(" ")
end   

