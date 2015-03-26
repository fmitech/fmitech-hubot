ways_of_saying_hello = [
  "hello",
  "hi",
  "hey",
  "yo",
  "sup",
  "howdy"
]

respond_regex = new RegExp("(?:\\b" + ways_of_saying_hello.join("\\b|\\b") + "\\b)", "i")
hear_regex    = new RegExp(respond_regex.source + ".*roy")

module.exports = (robot) ->

  robot.hear hear_regex, (msg) ->
    msg.send msg.random ways_of_saying_hello

  robot.respond respond_regex, (msg) ->
    msg.send msg.random ways_of_saying_hello
