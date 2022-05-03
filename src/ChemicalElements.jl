# This is a rather minimalistic take on the concept of the periodic table.
# Basically, we consider properties as functions of the atomic number. This
# is heavily inspired by [mendeleev](https://github.com/lmmentel/mendeleev).
# An alternative on that is
# [PeriodicTable.jl](https://github.com/JuliaPhysics/PeriodicTable.jl).

module ChemicalElements

export ChemicalElement
export @ce_str
export number

export symbol
export radius

using ColorTypes
export color

include("chemicalelement.jl")
include("symbols.jl")
include("radii.jl")
include("colors.jl")

end
