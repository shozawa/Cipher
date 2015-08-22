# coding: utf-8
require './cipher.rb'

text = <<EOF
But as the man escapes into the street, the camera pans up to reveal two surprises: the palm trees of Los Angeles reaching into the sky, and—even more surprising—a street bustling with cars and people. The world is still alive, and we get to watch it fall apart all over again.
EOF

out =  encode(text, 'losange')

puts out

puts decode(out, 'losange')

p frequency_analyze out
