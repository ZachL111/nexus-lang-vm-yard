include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(52, 26, 18, 76)
@assert score(item) == 152
@assert lane(item) == "ship"
