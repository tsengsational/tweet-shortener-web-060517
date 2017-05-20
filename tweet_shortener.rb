require 'pry'
# Write your code here.
def dictionary
  tweetDictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  keys = dictionary.keys
  tweetArray = tweet.split(" ")
  tweetArray = tweetArray.map do |word|
  if keys.include?(word.downcase)
    dictionary[word.downcase]
  else
    word
  end
end
  tweetArray.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortTweet = selective_tweet_shortener(tweet)
  if shortTweet.length > 140
    shortTweet = shortTweet[0..136] + "..."
  end
  shortTweet
end