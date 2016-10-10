using PyPlot

file = open("ml-100k/u.data") 	 
user = []
rating = []
for line in eachline(file)
	u = split(line, "\t")[1]
  	index = find(x->x == u, user)
  	if index != []
  		rating[index[1]] += 1
  	else
  		push!(user, u)
  		push!(rating, 1)
  	end
end
sort!(rating)
fig = figure("pyplot_histogram",figsize=(10,10)) # Not strictly required
ax = axes() # Not strictly required
h = plt[:hist](rating, length(rating)) # Histogram

grid("on")
xlabel("X")
ylabel("Y")
title("Histogram")
