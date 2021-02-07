@time @testset "colors.jl" begin
    @test color(ce"C") == color(ce"C", Val(:cpk))

    @test color(ce"H", Val(:cpk)) == RGB{Float32}(255, 255, 255)
end