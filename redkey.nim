const cflags = staticExec("pkg-config --cflags gtk+-3.0")
{.passC: cflags  .}
{.compile: "private/helper.c".}
import gintro/[gtk, gobject]

type
  RedKeyContext = ref object of IMContext
  RedKeyIMContextClass = IMContextClass00


proc im_module_init(typeModule: ptr TypeModule00) {.exportc.} =
  echo "RedKey Init"
  var typeInfo: TypeInfo00
  typeInfo.classSize = sizeof(RedKeyIMContextClass).uint16

  discard g_type_module_use(typeModule)
  echo "init end"


proc im_module_exit() {.exportc.} =
  echo "RedKey Exit"

proc im_module_create(context: string): IMContext {.exportc.} =
  echo "RedKey: ", context
  writeFile("/tmp/redkey.log", "RedKey: " & context)
