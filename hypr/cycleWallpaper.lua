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
for name in string.gmatch(result, "%S+") do
	if name ~= "wallpaper" then
		table.insert(papers, name)
	end
end

--handle = io.open("~/.config/hypr/index.md")
--if handle ~= nil then
--	result = handle:read("*a")
--else
--	print("cannot read index file")
--end
--
--local next = result:gsub("%s+", "")
os.execute("hyprctl hyprpaper listloaded > ~/.config/hypr/log.txt")
handle = io.popen("hyprctl hyprpaper listloaded")
if handle ~= nil then
	result = handle:read("*a")
else
	print("cannot read current loaded wallpaper")
	os.exit()
end

function getIndex(name)
	for i, j in pairs(papers) do
		if directory .. j == name then
			return i
		end
	end

	return nil
end

-- Basically only for startup or if something goes terribly wrong
if result == "no wallpapers loaded\n" then
	print("starting up ..")

	handle = io.popen("readlink -f " .. directory .. "wallpaper")
	if handle ~= nil then
		os.execute('hyprctl hyprpaper reload ",' .. directory .. 'wallpaper"')
		os.execute("hyprctl hyprpaper unload all")
		os.execute( -- pretty fire oneliner
			'hyprctl hyprpaper preload "'
				.. directory
				.. papers[getIndex(string.gsub(handle:read("*a"), "%s+", "")) % #papers + 1]
				.. '"'
		)
	else
		print("smthn has gone very wrong even tho no one will see this error ever")
	end
	handle:close()
	os.exit()
	--hope you have at least 2 files in ur wallpapers directory
end

local loaded = {}
for i in string.gmatch(result, "%S+") do
	table.insert(loaded, i)
end

local next = loaded[1]

local index = getIndex(next)

if index == nil then
	index = #papers
end

-- so weird arrays start at [1]
index = (index % #papers) + 1
--os.execute('hyprctl hyprpaper reload ",' .. directory .. papers[index] .. '"')

os.execute('hyprctl hyprpaper wallpaper ",' .. next .. '"')
os.execute("ln -sf " .. next .. " " .. directory .. "wallpaper")
os.execute("hyprctl hyprpaper unload all")
os.execute('hyprctl hyprpaper preload "' .. directory .. papers[index] .. '"')
