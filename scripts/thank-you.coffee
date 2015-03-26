ways_of_saying_thanks = [
  "no problem",
  "you're welcome"
  "my pleasure",
  "sure thing",
  "np"
]

module.exports = (robot) ->

  robot.hear /(thanks?|ty).*roy/i, (msg) ->
    msg.send msg.random ways_of_saying_thanks

  robot.respond /(thanks?|ty).*/i, (msg) ->
    msg.send msg.random ways_of_saying_thanks
