io.write("Enter name of .dog file: ")
line_file = io.read()

lines = {}
for line in io.lines(line_file) do
    lines[#lines+1] = line
end


i = 1
store = 0

while i <= #lines do
	if lines[i] == "dog" then
		store = tonumber(lines[i+1]) + tonumber(lines[i-1])
		if store == 1 then
			io.write(string.char(lines[i+2]))
		if store == 2 then
			i = lines[i+2]
		else
			io.write(store)
		end
	end

	i = i + 1
end

