@time @testset "symbols.jl" begin
    @test symbol(ce"H") == :H
end