include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(61, 87, 16, 7, 5)
@assert score(signal_case_1) == 132
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(91, 99, 20, 12, 11)
@assert score(signal_case_2) == 181
@assert classify(signal_case_2) == "accept"
signal_case_3 = Signal(106, 83, 9, 21, 9)
@assert score(signal_case_3) == 157
@assert classify(signal_case_3) == "review"
