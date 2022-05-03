struct ChemicalElement
    number::UInt8  # Boy, that's cheap!
end
# ChemicalElement(number::Integer) = ChemicalElement(convert(UInt8, number))
ChemicalElement(symbol::Symbol) = ChemicalElement(_numbers[symbol])
ChemicalElement(symbol::AbstractString) = ChemicalElement(Symbol(symbol))

Base.convert(::Type{T}, ce::ChemicalElement) where {T<:Number} = convert(T, ce.number)
number(ce::ChemicalElement) = ce.number

# I'm not sure if this stays, but it is neat. The string "ce" might be a bad
# choice though, gotta think this through.
macro ce_str(raw)
    return ChemicalElement(raw)
end
