function GetInput()::Array{Int}
    inputArray = []

    open("input.txt") do file
        for line in eachline(file)
            push!(inputArray, line)
        end
    end

    return parseAsInt.(inputArray)
end

function parseAsInt(input)::Int
    return parse(Int, input)
end
