# install.packages("renv")
library(renv)
# renv::init()
# renv::install("languageserver")
# renv::install("/code/renv/cellar/vscDebugger_0.5.2.tar.gz")
library(languageserver)
library(here)
library(vscDebugger)

# Make sure renv is deactivated
# renv::deactivate()

# In this case, the debugger works perfect
addNumbers <- function(x,y){
    z = x + y
    return(z)
}

print(addNumbers(2,3))


# Activate renv
renv::activate()
