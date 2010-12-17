require 'json'

loop do
  ask "Press a key or push zero to exit.", {
    :choices  => "[1 DIGITS]",
    :onChoice => lambda { |event|
      input = { :command => event.value }.to_json
      message input, {
        :to      => "troporiffic@jabber.org",
        :network => "JABBER"}
        exit if event.value == "0"
      }
    }
end
