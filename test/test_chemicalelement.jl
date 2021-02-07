@time @testset "chemicalelement.jl" begin
    @test ChemicalElement(:H) == ChemicalElement(1)
    
    @test ce"H" == ChemicalElement(1)
end