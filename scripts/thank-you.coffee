ways_of_saying_you_are_welcome = [
  "no problem",
  "you're welcome"
  "my pleasure",
  "sure thing",
  "np"
]

module.exports = (robot) ->

  robot.hear /(thanks?|ty|thx).*roy/i, (msg) ->
    msg.send msg.random ways_of_saying_you_are_welcome

  robot.respond /(thanks?|ty|thx).*/i, (msg) ->
    msg.send msg.random ways_of_saying_you_are_welcome
