struct ChemicalElement
    number::UInt8  # Boy, that's cheap!
end
ChemicalElement(number::Integer) = ChemicalElement(convert(UInt8, number))
ChemicalElement(symbol::Symbol) = ChemicalElement(_numbers[symbol])
ChemicalElement(symbol::String) = ChemicalElement(Symbol(symbol))

# I think it might be OK to have a conversion instead, like Int(ce), but I'm
# not sure.
number(ce::ChemicalElement) = ce.number

# I'm not sure if this stays, but it is neat. The string "ce" might be a bad
# choice though, gotta think this through.
macro ce_str(raw)
    return ChemicalElement(raw)
end