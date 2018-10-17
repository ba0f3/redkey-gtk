//#include "gtkintl.h"
#include "gtk/gtkimmodule.h"

static const GtkIMContextInfo redkey_info = {
  "redkey",
  "RedKey Input Method",
  "redkey",
  "/usr/share/locale",
  "en:vi:*"
};

static const GtkIMContextInfo *info_list[] = {
  &redkey_info
};

extern void im_module_list(const GtkIMContextInfo ***contexts, int *n_contexts)
{
  printf("im_module_list\n");
  *contexts = info_list;
  *n_contexts = G_N_ELEMENTS (info_list);
}
