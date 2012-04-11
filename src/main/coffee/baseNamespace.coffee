###
 Utility to create a particular namespace for Log4JScript
 ###
window.namespace = (_name) ->
 createPackage = (_parentPkg, _src) ->
  _parentPkg[_src] = _parentPkg[_src] or new Object()

 cob = ""
 spc = _name.split(".")
 cob = window
 cob=createPackage(cob,pkg) for pkg in spc
 return null