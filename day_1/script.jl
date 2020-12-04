include("../input_generator.jl")

function main()
	target = 2020
	data = GetInput("./data.txt") 
	global ans
	while length(data) > 0;
		x = popfirst!(data)
		for (i, y) in enumerate(data)
			for z in data[1:end .!=i]	
				if x + y + z == target
					println("$x $y $z")
					global ans = x * y * z
					@goto finished
				end
			end
		end
	end
	@label finished
end

@time begin
	main()
end
println("Found answer: $ans")

