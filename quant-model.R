library(rClr)

clrLoadAssembly('C:\\Users\\evo\\source\\repos\\quant-model\\quant-modles2\\bin\\Release\\quant-models-lib.dll')

clrGetLoadedAssemblies()

typename = clrGetTypesInAssembly('quant-models-lib')
typename

varResults <- clrCallStatic("QuantUtilityLibraries.QuantLibrary", "calculateVAR", as.integer(5))
varResults

str(varResults)
class(varResults)