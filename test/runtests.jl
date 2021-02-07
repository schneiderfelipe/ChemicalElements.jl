using ChemicalElements
using Test

# We need RGB{Float32} to test colors
using ColorTypes

@testset "ChemicalElements.jl" begin
    include("test_chemicalelement.jl")
    include("test_symbols.jl")
    include("test_radii.jl")
    include("test_colors.jl")
end
