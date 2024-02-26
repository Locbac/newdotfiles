#include "interface/desktop.h"

#include <stddef.h>

extern struct WL_DesktopOps WLD_xdg;

const struct WL_DesktopOps * WL_Desktops[] =
{
  &WLD_xdg,
  NULL
};