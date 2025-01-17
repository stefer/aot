module Day1

    export run

    function run(input::String)
        values = parse.(Int, split(input))
        left = sort(values[1:2:end])
        right = sort(values[2:2:end])
        map((x,y) -> abs(x-y), left, right) |> sum
    end

end
