//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/* {"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0}, */
  {"  ", "$HOME/.config/dwmblocks-scripts/wifi.sh", 60, 12},
  {"  ", "$HOME/.config/dwmblocks-scripts/bluetooth.sh", 60},
  {"  ", "$HOME/.config/dwmblocks-scripts/battery.sh", 30},
  {"", "$HOME/.config/dwmblocks-scripts/battery-remaining.sh", 30},
  {"  ", "$HOME/.config/dwmblocks-scripts/volume.sh", 360, 10},
  {"  ", "$HOME/.config/dwmblocks-scripts/backlight.sh", 360, 11},
	{"", "date '+ [%I:%M %p]  [%Y-%m-%d]'",					5,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " / ";
/* static char delim[] = " /\xXX "; */
static unsigned int delimLen = 5;
