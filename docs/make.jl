using ChemicalElements
using Documenter

makedocs(;
    modules=[ChemicalElements],
    authors="Felipe S. S. Schneider <schneider.felipe@posgrad.ufsc.br> and contributors",
    repo="https://github.com/schneiderfelipe/ChemicalElements.jl/blob/{commit}{path}#L{line}",
    sitename="ChemicalElements.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://schneiderfelipe.github.io/ChemicalElements.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/schneiderfelipe/ChemicalElements.jl",
)
