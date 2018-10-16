import gintro/[gtk, gobject]

type
  RKContext = ref object of IMContext

proc im_module_init(typeModule: TypeModule) {.exportc.} =
  echo "RedKey Init"

proc im_module_exit() {.exportc.} =
  echo "RedKey Exit"

proc im_module_create(context: string): IMContext {.exportc.} =
  echo "RedKey: ", context

proc im_module_list(contextInfo: ptr ptr ptr IMContextInfo, length: ptr int) {.exportc.} =
  echo "RedKey List"
  var
    redkey00: IMContextInfo00
    redkey = new(IMContextInfo)

  redkey00.contextId = "redkey"
  redkey00.contextName = "RedKey Input Method"
  redkey00.domain = "redkey"
  redkey00.defaultLocales = "en:vi:*"
  redkey.impl = addr redkey00

  contextInfo[][] = addr redkey

  length[] = 1
  echo "list end"
