# NOTE: this might go to a different package for colors only in the future;
# the ColorTypes dependency would go with it.
ColorTypes.color(ce::ChemicalElement) = color(ce, Val(:cpk))
ColorTypes.color(ce::ChemicalElement, ::Val{:cpk}) = _cpk_colors[number(ce)]

# NOTE: I might want to change RGB{Float32} to some other type in the future.

# CPK colors.
# 
# Source: Wikipedia. Cpk coloring — wikipedia, the free encyclopedia. 2017.
# [Online; accessed 5-October-2017]. URL:
# https://en.wikipedia.org/w/index.php?title=CPK_coloring&oldid=802098372.
const _cpk_colors = Dict(
    1 => RGB{Float32}(255, 255, 255),
    2 => RGB{Float32}(255, 192, 203),
    3 => RGB{Float32}(178, 34, 34),
    4 => RGB{Float32}(255, 20, 147),
    5 => RGB{Float32}(0, 255, 0),
    6 => RGB{Float32}(200, 200, 200),  # Should be light-grey, but is too whitey!
    7 => RGB{Float32}(143, 143, 255),  # Should be light-blue, but is too whitey!
    8 => RGB{Float32}(240, 0, 0),
    9 => RGB{Float32}(218, 165, 32),
    10 => RGB{Float32}(255, 20, 147),
    11 => RGB{Float32}(0, 0, 255),
    12 => RGB{Float32}(34, 139, 34),
    13 => RGB{Float32}(128, 128, 144),
    14 => RGB{Float32}(218, 165, 32),
    15 => RGB{Float32}(255, 165, 0),  # Should be orange, but is yellow!
    16 => RGB{Float32}(255, 200, 50),  # Should be yellow, but is whitey!
    17 => RGB{Float32}(0, 255, 0),
    18 => RGB{Float32}(255, 20, 147),
    19 => RGB{Float32}(255, 20, 147),
    20 => RGB{Float32}(128, 128, 144),  # Should be dark-grey, but is whitey!
    21 => RGB{Float32}(255, 20, 147),
    22 => RGB{Float32}(128, 128, 144),
    23 => RGB{Float32}(255, 20, 147),  # Should be dark-grey, but is whitey!
    24 => RGB{Float32}(128, 128, 144),
    25 => RGB{Float32}(128, 128, 144),
    26 => RGB{Float32}(255, 165, 0),  # Should be purple, but is yellow!
    27 => RGB{Float32}(255, 20, 147),
    28 => RGB{Float32}(165, 42, 42),
    29 => RGB{Float32}(165, 42, 42),
    30 => RGB{Float32}(165, 42, 42),  # Should be brown, but is too whitey!
    31 => RGB{Float32}(255, 20, 147),
    32 => RGB{Float32}(255, 20, 147),
    33 => RGB{Float32}(255, 20, 147),
    34 => RGB{Float32}(255, 20, 147),
    35 => RGB{Float32}(165, 42, 42),  # Should be brown, but is too whitey!
    36 => RGB{Float32}(255, 20, 147),
    37 => RGB{Float32}(255, 20, 147),
    38 => RGB{Float32}(255, 20, 147),
    39 => RGB{Float32}(255, 20, 147),
    40 => RGB{Float32}(255, 20, 147),
    41 => RGB{Float32}(255, 20, 147),
    42 => RGB{Float32}(255, 20, 147),
    43 => RGB{Float32}(255, 20, 147),
    44 => RGB{Float32}(255, 20, 147),
    45 => RGB{Float32}(255, 20, 147),
    46 => RGB{Float32}(255, 20, 147),
    47 => RGB{Float32}(128, 128, 144),
    48 => RGB{Float32}(255, 20, 147),
    49 => RGB{Float32}(255, 20, 147),
    50 => RGB{Float32}(255, 20, 147),
    51 => RGB{Float32}(255, 20, 147),
    52 => RGB{Float32}(255, 20, 147),
    53 => RGB{Float32}(160, 32, 240),
    54 => RGB{Float32}(255, 20, 147),
    55 => RGB{Float32}(255, 20, 147),
    56 => RGB{Float32}(255, 165, 0),
    57 => RGB{Float32}(255, 20, 147),
    58 => RGB{Float32}(255, 20, 147),
    59 => RGB{Float32}(255, 20, 147),
    60 => RGB{Float32}(255, 20, 147),
    61 => RGB{Float32}(255, 20, 147),
    62 => RGB{Float32}(255, 20, 147),
    63 => RGB{Float32}(255, 20, 147),
    64 => RGB{Float32}(255, 20, 147),
    65 => RGB{Float32}(255, 20, 147),
    66 => RGB{Float32}(255, 20, 147),
    67 => RGB{Float32}(255, 20, 147),
    68 => RGB{Float32}(255, 20, 147),
    69 => RGB{Float32}(255, 20, 147),
    70 => RGB{Float32}(255, 20, 147),
    71 => RGB{Float32}(255, 20, 147),
    72 => RGB{Float32}(255, 20, 147),
    73 => RGB{Float32}(255, 20, 147),
    74 => RGB{Float32}(255, 20, 147),
    75 => RGB{Float32}(255, 20, 147),
    76 => RGB{Float32}(255, 20, 147),
    77 => RGB{Float32}(255, 20, 147),
    78 => RGB{Float32}(255, 20, 147),
    79 => RGB{Float32}(218, 165, 32),
    80 => RGB{Float32}(255, 20, 147),
    81 => RGB{Float32}(255, 20, 147),
    82 => RGB{Float32}(255, 20, 147),
    83 => RGB{Float32}(255, 20, 147),
    84 => RGB{Float32}(255, 20, 147),
    85 => RGB{Float32}(255, 20, 147),
    86 => RGB{Float32}(255, 255, 255),
    87 => RGB{Float32}(255, 255, 255),
    88 => RGB{Float32}(255, 255, 255),
    89 => RGB{Float32}(255, 255, 255),
    90 => RGB{Float32}(255, 20, 147),
    91 => RGB{Float32}(255, 255, 255),
    92 => RGB{Float32}(255, 20, 147),  # Should be deep-pink, but is whitey!
    93 => RGB{Float32}(255, 255, 255),
    94 => RGB{Float32}(255, 255, 255),
    95 => RGB{Float32}(255, 255, 255),
    96 => RGB{Float32}(255, 255, 255),
    97 => RGB{Float32}(255, 255, 255),
    98 => RGB{Float32}(255, 255, 255),
    99 => RGB{Float32}(255, 255, 255),
    100 => RGB{Float32}(255, 255, 255),
    101 => RGB{Float32}(255, 255, 255),
    102 => RGB{Float32}(255, 255, 255),
    103 => RGB{Float32}(255, 255, 255),
)
