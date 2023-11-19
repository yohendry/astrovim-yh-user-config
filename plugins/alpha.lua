local Banners = {}

Banners.getBanner = function()
  math.randomseed(os.time())
  local headers = {
    { "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣶⡖⢦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠋⠹⣦⠘⠉⠳⢤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠓⠶⣶⣶⣿⣛⣀⣰⣆⣀⣀⠉⠛⢶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠉⠉⠙⢷⣦⡀⠈⠻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡤⠶⢶⣶⣾⣿⡀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⠋⠀⣠⣶⣖⣻⣿⠟⠀⠀⣸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣄⠀⠀⠈⠙⠛⠉⠁⠀⣠⣾⡟⠉⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠿⠿⣿⣿⣿⡿⠿⢿⣿⣯⣿⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⠁⠀⣀⣤⣤⣤⣤⣤⣤⣼⣿⣿⠇⠀⢈⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⣾⣏⠁⠀⠀⠀⢀⣀⣴⡿⠋⠀⠀⣼⠟⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⣄⡀⠈⠙⠛⠛⠛⠛⠋⠉⠁⢀⣠⣴⣿⡟⠀⠸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈⣽⣿⣶⣶⣶⣶⣶⣶⣾⣿⣯⣍⠀⠘⡗⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠞⠉⠉⠀⢀⣀⣀⣀⣀⡀⠀⠀⠹⣿⣷⣼⡇⠀⢀⡿⠀⠀⠀⠀⢠⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠋⠀⠀⢰⡿⠛⠉⠉⠉⠉⠙⠿⠷⣦⣼⣿⠏⠀⢀⣾⡃⠀⠀⠀⣀⡿⣹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠘⢿⣦⣄⣀⣤⣤⣤⣤⡶⠿⠋⠁⠀⣠⣾⡏⠛⠓⠒⠛⣩⡴⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⣀⡀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⣀⣴⡾⠛⠛⠿⠶⠶⠶⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⠿⠿⠿⣿⣶⡶⠶⠶⠿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀" },
    {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣶⣶⣶⣶⣶⣶⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⣠⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⡇⠀⠀⣿⣿⣧⡀⢀⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⠿⠋⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣯⣤⣤⣤⣤⣤⣤⣤⣬⣿⣿⣿⣿⡿⠋⠙⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠿⠿⠿⠿⠿⠿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
      "⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣠⣤⣶⣶",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢰⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⣀⣾⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿",
      "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿",
      "⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿",
    },
    {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⠶⠾⠿⠛⠛⠿⠿⠶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠿⠋⠉⠀⠀⣀⣠⣤⣤⣄⣀⠀⠀⠈⠙⠿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠁⠔⢻⡆⣰⣿⣿⣿⣿⣿⣿⣿⣿⣆⢰⡟⠢⠈⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡟⣡⠴⢦⣄⠾⢣⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡜⢷⣄⠴⠦⣌⢻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⢃⣤⠾⢹⡇⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢰⡟⠷⣦⡘⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⠀⢠⡿⠃⠀⣸⢇⡄⢈⢿⣿⣿⣿⣿⣿⣿⡿⡇⢠⡸⣇⠀⠈⢿⣄⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⣿⠁⠀⣴⠟⣾⣿⣶⡷⠽⣿⣿⣿⣿⠯⢾⣷⣿⣷⠹⣦⠀⠀⣿⠀⢸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡁⠀⠻⣦⡾⠋⠀⠘⠋⣹⣿⣦⣘⢿⡿⣃⣤⣾⣏⠙⠃⠀⠙⣷⣰⠟⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠀⠀⣮⠛⠛⠿⠿⠿⣟⣛⡿⣿⣇⣰⣿⣿⣛⣿⠿⠿⠿⠟⠚⣷⡀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⠀⠸⣿⠀⡞⠛⣦⣾⠟⠉⣷⣹⣿⣿⣏⣾⠉⠻⣗⣴⠛⢳⠀⣿⠇⠀⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣧⠀⠹⣧⣀⠾⠟⣇⣠⣼⠟⢹⡟⢹⡏⠻⣧⣄⣸⠗⣷⣀⣴⠟⠀⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣧⡀⠈⢹⣟⠃⣿⢉⣠⣤⣼⠇⠸⣣⣤⣄⡉⣿⠛⣸⡇⠁⢀⣼⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣦⡀⠻⠷⢾⣛⣁⣴⠟⡧⢸⠱⣦⣈⣳⡟⠾⠟⢁⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣶⣤⣀⠉⠉⠁⠐⠁⠈⠂⠈⠉⠉⣀⣠⣶⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠶⢶⣶⣦⣴⣶⡶⠾⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    },
    {
      "",
      "                                                              ",
      "    ⢀⣀⣤⣤⣤⠤⢤⣤⣤⣤⣤⣄⣀⡀           ⢀⣠⣤⣄⡀            ⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀   ",
      " ⢀⣤⠚⠩⠁⡄ ⠠⣤⠒⠒⣂ ⢈⣨⣭⣿⠛⠶⣦⣤⣄⡀   ⢠⣾⡟⠉⠉⠝⠿⠇    ⢀⣠⡤⠔⠒⣻⠟⠋⠩⠉⢁⣀⡀  ⣶  ⠙⡛⠷  ",
      " ⠸⢟⡠⠒⢊⡤  ⠋⣠ ⠈⣉⣉⣉⣉⣀⣛⣿⡒⠭⡿⢿⣷⣤⣤⣀⣽⣇⣴⠆⣴⡃⢀⣠⣤⠴⣚⣫⡥ ⠒⠛⠁⣀⣉⣉⣙⢏⡉  ⢀⣼⣤⣜⠳⡦⠂  ",
      "   ⠐⠚⠫⣤⠖⢣⣤⡕ ⠉⣩⣤⠔ ⠂⣋⣭⣥⣤⠴⠛⣛⠈⢩⣿⠿⠛⢉  ⡐⠞⠫⢍⠙⣓⠢⠴⣥⣍⣙⠛⢓⡢⢤⣬⠉⠅ ⣤⡜⢛⠻⠛⠉⠁   ",
      "      ⠘⢔⢎⣡⡔⠂⣠⡿⠁⠒⢛⡻⢛⣩⠅  ⠉  ⠚⣯⣄⢠⣿⢀⣾⠇ ⠓ ⠁⠂⠈⠍⠐⠈⡉⣿⠛⣛⠛⠉⣤⣰⣿⣿⡟⠛⠁      ",
      "        ⠙⠛⠐⠚⠋ ⠒⣲⡿⠇⣋        ⢺⡏⠈⣀ ⠉⠈        ⠙⢿⠟⢰⣖⡢ ⠂⠒⠚⠉         ",
      "             ⣴⠛⠅⢀⣾⠟⢃       ⢹⠃⠠⠁⠈⠩         ⢠⣿ ⣀⢹⣿⡷             ",
      "             ⢿⣤⢚⣫⠅         ⢸⠇ ⢚ ⢀         ⣸⡇ ⠉⣿⣿⠇             ",
      "             ⠈⠛⢻⣥⡚⠔⣠⢣⣄⡀    ⢸⡇ ⢘ ⠈ ⠠⠈    ⣀⣰⡿⣧⣄⠾⠋⠁              ",
      "                ⠈⠑⠁        ⠘⣿⡀⣈⣀    ⠈  ⠈⠙⠁                    ",
      "                            ⠘⣷⠁                               ",
      "                             ⠙⣤                               ",
      "                              ⠛⠂                              ",
    },
    {
      "",
      [[]],
      [[]],
      [[]],
      [[]],
      "   ▄████▄        ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒ ",
      "  ███▄█▀        ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒",
      " ▐████  █  █    ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
      "  █████▄        ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
      "    ████▀       ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒",
      [[]],
      [[]],
      [[]],
      [[]],
      [[]]
    },
    {
      "",
      [[]],
      [[]],
      [[]],
      [[]],
      [[______          _                   ______               ]],
      [[| ___ \        | |                  |  _  \               ]],
      [[| |_/ __ _ _ __| | _____  _   _ _ __| | | |_____   _____  ]],
      [[|  __/ _` | '__| |/ / _ \| | | | '__| | | / _ \ \ / / __| ]],
      [[| | | (_| | |  |   | (_) | |_| | |  | |/ |  __/\ V /\__ \ ]],
      [[\_|  \__,_|_|  |_|\_\___/ \__,_|_|  |___/ \___| \_/ |___/ ]],
      [[]],
      [[]],
      [[]],
      [[]]
    },
    {
      [[                                   /\                                ]],
      [[                              /\  //\\                               ]],
      [[                       /\    //\\///\\\        /\                    ]],
      [[                      //\\  ///\////\\\\  /\  //\\                   ]],
      [[         /\          /  ^ \/^ ^/^  ^  ^ \/^ \/  ^ \                  ]],
      [[        / ^\    /\  / ^   /  ^/ ^ ^ ^   ^\ ^/  ^^  \                 ]],
      [[       /^   \  / ^\/ ^ ^   ^ / ^  ^    ^  \/ ^   ^  \       *        ]],
      [[      /  ^ ^ \/^  ^\ ^ ^ ^   ^  ^   ^   ____  ^   ^  \     /|\       ]],
      [[     / ^ ^  ^ \ ^  _\___________________|  |_____^ ^  \   /||o\      ]],
      [[    / ^^  ^ ^ ^\  /______________________________\ ^ ^ \ /|o|||\     ]],
      [[   /  ^  ^^ ^ ^  /________________________________\  ^  /|||||o|\    ]],
      [[  /^ ^  ^ ^^  ^    ||___|___||||||||||||___|__|||      /||o||||||\   ]],
      [[ / ^   ^   ^    ^  ||___|___||||||||||||___|__|||          | |       ]],
      [[/ ^ ^ ^  ^  ^  ^   ||||||||||||||||||||||||||||||oooooooooo| |ooooooo]],
      [[ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],
    },
  {
    "",
    [[]],
    [[█████╗  █████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗   ██╗██████╗ ]],
    [[██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔═══██╗██║   ██║██╔══██╗]],
    [[██████╔╝███████║██████╔╝█████╔╝ ██║   ██║██║   ██║██████╔╝]],
    [[██╔═══╝ ██╔══██║██╔══██╗██╔═██╗ ██║   ██║██║   ██║██╔══██╗]],
    [[██║     ██║  ██║██║  ██║██║  ██╗╚██████╔╝╚██████╔╝██║  ██║]],
    [[╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝]],
    [[            ██████╗ ███████╗██╗   ██╗███████╗             ]],
    [[            ██╔══██╗██╔════╝██║   ██║██╔════╝             ]],
    [[            ██║  ██║█████╗  ██║   ██║███████╗             ]],
    [[            ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════██║             ]],
    [[            ██████╔╝███████╗ ╚████╔╝ ███████║             ]],
    [[            ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝             ]],
    [[]]
  },
    {
      "",
      [[]],
      [[]],
      [[ ██▓███   ▄▄▄       ██▀███   ██ ▄█▀ ▒█████   █    ██  ██▀███     ▓█████▄ ▓█████ ██▒   █▓  ██████ ]],
      [[ ▓██░  ██▒▒████▄    ▓██ ▒ ██▒ ██▄█▒ ▒██▒  ██▒ ██  ▓██▒▓██ ▒ ██▒   ▒██▀ ██▌▓█   ▀▓██░   █▒▒██    ▒ ]],
      [[ ▓██░ ██▓▒▒██  ▀█▄  ▓██ ░▄█ ▒▓███▄░ ▒██░  ██▒▓██  ▒██░▓██ ░▄█ ▒   ░██   █▌▒███   ▓██  █▒░░ ▓██▄   ]],
      [[ ▒██▄█▓▒ ▒░██▄▄▄▄██ ▒██▀▀█▄  ▓██ █▄ ▒██   ██░▓▓█  ░██░▒██▀▀█▄     ░▓█▄   ▌▒▓█  ▄  ▒██ █░░  ▒   ██▒ ]],
      [[ ▒██▒ ░  ░ ▓█   ▓██▒░██▓ ▒██▒▒██▒ █▄░ ████▓▒░▒▒█████▓ ░██▓ ▒██▒   ░▒████▓ ░▒████▒  ▒▀█░  ▒██████▒▒ ]],
      [[ ▒▓▒░ ░  ░ ▒▒   ▓▒█░░ ▒▓ ░▒▓░▒ ▒▒ ▓▒░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░    ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░  ▒ ▒▓▒ ▒ ░ ]],
      [[ ░▒ ░       ▒   ▒▒ ░  ░▒ ░ ▒░░ ░▒ ▒░  ░ ▒ ▒░ ░░▒░ ░ ░   ░▒ ░ ▒░    ░ ▒  ▒  ░ ░  ░  ░ ░░  ░ ░▒  ░ ░ ]],
      [[ ░░         ░   ▒     ░░   ░ ░ ░░ ░ ░ ░ ░ ▒   ░░░ ░ ░   ░░   ░     ░ ░  ░    ░       ░░  ░  ░  ░   ]],
      [[               ░  ░   ░     ░  ░       ░ ░     ░        ░           ░       ░  ░     ░        ░    ]],
      [[                                                                  ░                 ░              ]],
      [[]],
      [[]]
    },
    {
      "",
      [[:::::::::     :::     :::::::::  :::    ::: ::::::::  :::    ::: :::::::::  ]],
      [[:+:    :+:  :+: :+:   :+:    :+: :+:   :+: :+:    :+: :+:    :+: :+:    :+: ]],
      [[+:+    +:+ +:+   +:+  +:+    +:+ +:+  +:+  +:+    +:+ +:+    +:+ +:+    +:+ ]],
      [[+#++:++#+ +#++:++#++: +#++:++#:  +#++:++   +#+    +:+ +#+    +:+ +#++:++#:  ]],
      [[+#+       +#+     +#+ +#+    +#+ +#+  +#+  +#+    +#+ +#+    +#+ +#+    +#+ ]],
      [[#+#       #+#     #+# #+#    #+# #+#   #+# #+#    #+# #+#    #+# #+#    #+# ]],
      [[###       ###     ### ###    ### ###    ### ########   ########  ###    ###  ]],
      [[               :::::::::  :::::::::: :::     :::  ::::::::                  ]],
      [[               :+:    :+: :+:        :+:     :+: :+:    :+:                 ]],
      [[               +:+    +:+ +:+        +:+     +:+ +:+                        ]],
      [[               +#+    +:+ +#++:++#   +#+     +:+ +#++:++#++                 ]],
      [[               +#+    +#+ +#+         +#+   +#+         +#+                 ]],
      [[               #+#    #+# #+#          #+#+#+#   #+#    #+#                 ]],
      [[               #########  ##########     ###      ########                  ]]
    }
  }
  return headers[math.random(1, #headers)]
end

return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  dependencies = { "jay-babu/project.nvim" },
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = Banners.getBanner
    dashboard.section.header.opts.hl = "DashboardHeader"
    dashboard.section.footer.opts.hl = "DashboardFooter"

    local button = require("astronvim.utils").alpha_button

    dashboard.section.buttons.val = {
      button("󰧂 <leader>n ", "󰻭 New File     "),
      button("󰧂 <leader>fp", "󱒕 Find Projects"),
      button("󰧂 <leader>ff", " Find File    "),
      button("󰧂 <leader>Sl", "󰑏 Last Session "),
      button("󰧂 <leader>q ", "󰗼 Exit"),
    }

    dashboard.config.layout = {
      { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
      dashboard.section.header,
      { type = "padding", val = 2 },
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 3 },
      dashboard.section.footer,
    }
    dashboard.config.opts.noautocmd = false
    return dashboard
  end,
  config = function(_, opts)
    require("alpha").setup(opts.config)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      desc = "Add Alpha dashboard footer",
      once = true,
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        opts.section.footer.val = { "Nvim loaded " .. stats.count .. " plugins  in " .. ms .. "ms" }
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    -- prevent scroll on alpha
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

    -- show alpha on empty buffers
    vim.cmd [[ au BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Alpha | endif ]]

    local augroup = vim.api.nvim_create_augroup
    local autocmd = vim.api.nvim_create_autocmd
    -- show alpha on empty buffers
    -- vim.cmd [[ au BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Alpha | endif ]]
    local function get_listed_buffers()
      local buffers = {}
      local len = 0
      for buffer = 1, vim.fn.bufnr('$') do
        if vim.fn.buflisted(buffer) == 1 then
          len = len + 1
          buffers[len] = buffer
        end
      end

      return buffers
    end

    -- custom
    augroup('alpha_on_empty', { clear = true })
    autocmd('User', {
      pattern = 'BDeletePre',
      group = 'alpha_on_empty',
      callback = function(event)
        require("astronvim.utils").notify "trying to display alpha"
        local found_non_empty_buffer = false
        local buffers = get_listed_buffers()

        for _, bufnr in ipairs(buffers) do
          if not found_non_empty_buffer then
            -- local name = vim.api.nvim_buf_get_name(bufnr)
            local ft = vim.api.nvim_buf_get_option(bufnr, 'filetype')

            if ft ~= 'Alpha' then
              found_non_empty_buffer = true
            end
          end
        end

        if not found_non_empty_buffer then
          require 'neo-tree'.close_all()
          vim.cmd [[:Alpha]]
        end
      end,
    })
  end
}
