local directory = "/home/mqngo/Pictures/wallpapers/"
local monitor = "eDP-1"

os.execute("wpaperctl next")

-- it takes a second to switch the wallpaper,
-- so theres a little race condition here
os.execute("sleep 1")

local handle = io.popen("wpaperctl get " .. monitor)
local current
if handle ~= nil then
  current = handle:read("*a")
  current = string.gsub(current, "%s", "")
  print(current)
else
  print("cannot read wallpapers directory")
  os.exit()
end

local command = "ln -sf " .. current .. " " .. directory .. "wallpaper"
print(command)
os.execute(command)
