using PyPlot

file = open("ml-100k/u.data") 	 
ratings = [0 0 0 0 0]

for line in eachline(file)
	u = parse(Int, split(line, "\t")[3])
  	ratings[u[1]] += 1
end

#=fig = figure("pyplot_histogram",figsize=(10,10)) # Not strictly required
ax = axes() # Not strictly required
x = maximum(ratings)
h = plt[:hist](ratings, x) # Histogram

grid("on")
xlabel("X")
ylabel("Y")
title("Histogram")=#