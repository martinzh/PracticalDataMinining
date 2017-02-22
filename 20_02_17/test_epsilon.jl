using Plots; gr()

function epsilon(Nxi, P_Cxi, P_C)
    return (Nxi*(P_Cxi - P_C))/sqrt(Nxi*P_C*(1 - P_C))
end

Nxi = 10
P_Cxi = 0.25
P_C = 0.5

for N in 10:100:10000
 println(N,"\t", epsilon(N, P_Cxi, P_C))
end

for p in 0.0:0.1:1.0
 println(Nxi,"\t", epsilon(Nxi, p, P_C))
end

plot(collect(0.0:0.05:1.0),
    [epsilon(Nxi, p, P_C) for p in 0.0:0.05:1.0],
    xlabel = "P(C|X)",
    ylabel = "epsilon")


plot(collect(1:10:1000),
    [epsilon(N, P_Cxi, P_C) for N in 1:10:1000],
    xlabel = "N",
    ylabel = "epsilon",
    marker = :o)
