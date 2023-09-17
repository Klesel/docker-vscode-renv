# Makue sure renv is deactivated
# renv::deactivate()

# Install vscDebugger locally
# devtools::install_local("/code/renv/cellar/vscDebugger_0.5.2.tar.gz")

library(languageserver)
library(vscDebugger)

# In this case, the debugger works perfect
addNumbers <- function(x,y){
    z = x + y
    return(z)
}
print(addNumbers(2,3))


# Activate renv
# renv::activate()
# renv::install(c("languageserver"))
# renv::install("/code/renv/cellar/vscDebugger_0.5.2.tar.gz")

# In this case, the debugger works perfect
addNumbers <- function(x,y){
    z = x + y
    return(z)
}
print(addNumbers(2,3))