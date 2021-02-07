@time @testset "radii.jl" begin
    @test radius(ce"C") == radius(ce"C", Val(:vdw))

    @test radius(ce"H", Val(:vdw)) == 1.1
    @test radius(ce"H", Val(:cov)) == 0.32
end