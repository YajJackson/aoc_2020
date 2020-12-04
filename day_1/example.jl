const target = 2020
const report = [
	1721,
	979,
	366,
	299,
	675,
	1456,
]
global ans

while length(report) > 0;
	n = popfirst!(report)
	for complement in report;
		if n + complement == target
			global ans = n * complement
		end
	end
end

println("Found answer: $ans")
