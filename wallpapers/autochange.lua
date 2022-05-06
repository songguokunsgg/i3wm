function sleep(n)
   os.execute("sleep " .. n)
end

while (true)
do
  os.execute("feh --bg-fill --no-fehbg --randomize ~/.config/i3/wallpapers/src/*.jpg")
  sleep(900)
end
