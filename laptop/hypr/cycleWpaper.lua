local directory = "/home/mqngo/Pictures/wallpapers/"

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
  if name ~= "wallpaper" and name ~= "nextpaper" then
    table.insert(papers, name)
  end
end

local function getIndex(name)
  for i, j in pairs(papers) do
    if directory .. j == name then
      return i
    end
  end

  return nil
end

local loaded

handle = io.popen("readlink -f " .. directory .. "wallpaper")
if handle ~= nil then
  loaded = handle:read()
else
  print("smthn has gone wrong and i dont have time to fix it")
end

local index = getIndex(loaded)

if index == nil then
  index = #papers
end

-- so weird arrays start at [1]
index = (index % #papers) + 1

os.execute("ln -sf " .. papers[index] .. " " .. directory .. "wallpaper")
os.execute("wpaperctl set " .. directory .. "wallpaper")
