using Plots
pgfplots()

y = x = -20:5.0:20
pts = vec(P2[(x[i], x[j]) for i=1:length(x), j=1:length(x)])
df(x, y) = [1, x].*0.2
xlim=(minimum(x), maximum(x))
ylim=(minimum(y), maximum(y))
plt = quiver(pts, quiver=df, xlims=xlim, ylims=ylim, size=(250,250))
para(t) = [t, t^2/2 - 17]
t = -20:0.2:20
plot!(plt, map(x->para(x)[1], t), map(x->para(x)[2], t))
savefig("fig.tex")

n = 100
ts = linspace(2,7,n)
x = ts
y = zeros(x)
z = collect(1:n) ./ 100
plot(x,y,z,fill=true,leg=false,cbar=false,w=1, size=(250,250))
savefig("fig1.tex")
