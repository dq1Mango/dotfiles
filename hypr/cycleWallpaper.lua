local directory = "/home/dq1mango/Pictures/wallpapers/"

local handle = io.popen("ls " .. directory)
if handle ~= nil then
	result = handle:read("*a")
else
	print("cannot read wallpapers directory")
	os.exit()
end
handle:close()

local papers = {}
for i in string.gmatch(result, "%S+") do
	table.insert(papers, i)
end

--handle = io.open("~/.config/hypr/index.md")
--if handle ~= nil then
--	result = handle:read("*a")
--else
--	print("cannot read index file")
--end
--
--local next = result:gsub("%s+", "")

handle = io.popen("hyprctl hyprpaper listloaded")
if handle ~= nil then
	result = handle:read("*a")
else
	print("cannot read current loaded wallpaper")
	os.exit()
end

local loaded = {}
-- Basically only for startup or if something goes terribly wrong
if result == "no wallpapers loaded\n" then
	print("staring up ..")
	os.execute('hyprctl hyprpaper reload ",' .. directory .. papers[1] .. '"')
	os.execute('hyprctl hyprpaper preload "' .. directory .. papers[1 % #papers + 1] .. '"')
	os.exit()
	--hope you have at least 2 files in ur wallpapers
end

for i in string.gmatch(result, "%S+") do
	table.insert(loaded, i)
end

local next = loaded[1]

local index
for i, j in pairs(papers) do
	if directory .. j == next then
		index = i
		break
	end
end

if index == nil then
	index = #papers
end

-- so weird arrays start at [1]
index = (index % #papers) + 1
--os.execute('hyprctl hyprpaper reload ",' .. directory .. papers[index] .. '"')

os.execute('hyprctl hyprpaper wallpaper ",' .. next .. '"')
os.execute("hyprctl hyprpaper unload all")
os.execute('hyprctl hyprpaper preload "' .. directory .. papers[index] .. '"')
