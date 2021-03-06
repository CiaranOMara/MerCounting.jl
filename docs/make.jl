using Documenter, MerCounting, Pkg

makedocs(
    modules = [MerCounting],
    format = Documenter.HTML(),
    sitename = "MerCounting.jl",
    authors = replace(join(Pkg.TOML.parsefile("Project.toml")["authors"], ", "), r" <.*?>" => "" ),
    pages = [
        "Home" => "index.md",
        "Manual" => [
            "Installation" => "man/installation.md",
            "Basic types and counting" => "man/basic_counting.md"
        ],
        "API" => [
            "MerCount" => "api/MerCount.md"
        ]
    ],
    
)

deploydocs(
    repo = "github.com/BioJulia/MerCounting.jl.git",
    push_preview = true,
    deps = nothing,
    make = nothing
)