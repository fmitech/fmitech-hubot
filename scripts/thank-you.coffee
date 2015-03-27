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

  robot.hear /(?:\bthank(?:s| you)\b|\bty\b|\bthx\b).*\broy\b/i, (msg) ->
    msg.send msg.random ways_of_saying_you_are_welcome

  robot.respond /\bthank(?:s| you)\b|\bty\b|\bthx\b/i, (msg) ->
    msg.send msg.random ways_of_saying_you_are_welcome
