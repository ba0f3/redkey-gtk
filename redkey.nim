const cflags = staticExec("pkg-config --cflags gtk+-3.0")
{.passC: cflags  .}
{.compile: "private/helper.c".}
import gintro/[gtk, gobject]

type
  RedKeyContextInfo = object
    contextId: cstring
    contextName: cstring
    defaultLocales: cstring
    domain: cstring
    domainDirname: cstring

var
  redkey: RedKeyContextInfo
redkey.contextid = "redkey"
redkey.contextName = "RedKey Input Method"
redkey.defaultLocales = "en:vi:*"
redkey.domain = "redkey"

var infoList = addr redkey

proc im_module_init(typeModule: TypeModule) {.exportc.} =
  echo "RedKey Init"

proc im_module_exit() {.exportc.} =
  echo "RedKey Exit"

proc im_module_create(context: string): IMContext {.exportc.} =
  echo "RedKey: ", context

#proc im_module_list(contextInfo: ptr pointer, length: ptr int) {.exportc, cdecl.} =
#  echo "RedKey List"
#  copyMem(contextInfo[], infoList, sizeof(pointer))
#
#  length[] = 1
#  echo "list end"
