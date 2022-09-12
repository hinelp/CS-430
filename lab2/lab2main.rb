require "lab2"
dogs = { "Lucy" => "GSP", "Fido" => "Beagle", "Gigi" => "Mutt" }
puts Markup.compose_tag("dogs", dogs, :selfclose)