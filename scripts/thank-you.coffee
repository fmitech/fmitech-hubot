ways_of_saying_you_are_welcome = [
  "no problem",
  "you're welcome"
  "my pleasure",
  "sure thing",
  "np",
  "it's cool",
  "no worries",
  "any time",
  "don't mention it"
]

module.exports = (robot) ->

  robot.hear /(?:thank(?:s| you)|ty|thx).*roy/i, (msg) ->
    msg.send msg.random ways_of_saying_you_are_welcome

  robot.respond /thank(?:s| you)|ty|thx/i, (msg) ->
    msg.send msg.random ways_of_saying_you_are_welcome
