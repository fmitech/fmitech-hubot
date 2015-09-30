module.exports = (robot) ->

  # greetings
  greetings       = [ "hello",  "hi",  "hey",  "yo",  "sup",  "howdy" ]
  greetings_regex = new RegExp('(hi|hello).*\\broy\\b', 'i')
  robot.hear greetings_regex, (msg) ->
    msg.send msg.random greetings

  # love
  i_love_yous       = [ "love you", "i love you", "ilu" ]
  i_love_you_backs  = [ "love you too", "i love you too", "i \<3 you too", "\<3 you too" ]
  i_love_yous_regex = new RegExp('(' + i_love_yous.join('|') + ').*\\broy\\b', 'i')
  robot.hear i_love_yous_regex, (msg) ->
    msg.send msg.random i_love_yous

  # gratitude
  thank_yous       = [ "thank you", "thanks", "ty", "thx", "thankyou" ]
  you_are_welcomes = [ "no problem", "you're welcome", "my pleasure", "sure thing", "np", "it's cool", "no worries", "any time", "don't mention it" ]
  thank_yous_regex = new RegExp('(' + thank_yous.join('|') + ').*\\broy\\b', 'i')
  robot.hear thank_yous_regex, (msg) ->
    msg.send msg.random you_are_welcomes
