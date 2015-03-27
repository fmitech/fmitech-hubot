ways_of_saying_i_love_you = [
  "love you",
  "i love you",
  "ilu"
]

ways_of_saying_i_love_you_too = [
  "love you too",
  "i love you too",
  "ilu2",
  "i \<3 you too",
  "\<3 you too",
  "i \<3 u 2",
  "\<3 u 2"
]

respond_regex = new RegExp("(?:\\b" + ways_of_saying_i_love_you.join("\\b|\\b") + "\\b)", "i")
hear_regex    = new RegExp(respond_regex.source + ".*roy", "i")

module.exports = (robot) ->

  robot.hear hear_regex, (msg) ->
    msg.send msg.random ways_of_saying_i_love_you_too

  robot.respond respond_regex, (msg) ->
    msg.send msg.random ways_of_saying_i_love_you_too
