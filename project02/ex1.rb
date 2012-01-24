strings = Array.new(8)
strings[0] = "Hello World!"
strings[1] = "Hello Again"
strings[2] = "I like typing this."
strings[3] = "This is fun."
strings[4] = 'Yay!  Printing.'
strings[5] = "I'd much rather you 'not'."
strings[6] = 'I "said" do not touch this.'
strings[7] = "Hooray!  Another line!"

# This is a comment!  It tells Ruby not to run the code on this line.

for i in 0..8
	puts strings[i]
	end

	puts "Now, for just one (random) line from the strings:"
	puts ""

	j = Random.rand(7)
	puts strings[j]

