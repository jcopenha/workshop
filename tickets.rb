# Setup the distribution of prizes (this should add up to 100)
setup = Hash[ :half, 85, :one, 16, :two, 5, :five, 3, :ten, 1]

# Setup the value of each prize
worth = Hash[ :half, 0.50, :one, 1.00, :two, 2.00, :five, 5.00, :ten, 10.00]
values = []

# Build the distribution
setup.keys.each do |k|
    (1..setup[k]).each do
        values.push(k)
    end
end

# shuffle our prizes
v = values.shuffle
total = 0

# pull out however many prizes we earned and add them up
(1..ARGV[0].to_i).each do |i|
    total += worth[v[i]]
    print "won #{v[i]}\n"
end
print "You won #{total}\n"
