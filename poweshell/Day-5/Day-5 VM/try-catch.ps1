<# try{
    #where error is expected

}catch{
    #if error occurs,then catch will be executed
}finally{
    #optional
}
#>

#example 1
cls
$one=1
$zero=0
try{
    $one/$zero
}
catch{
    "something else went wrong!!!"
}

#example 1
cls
$one=1
$zero=0
try{
    $one/$zero
}
catch [System.DivideByZeroException]{
    "divide by zero error"
}
catch {
"something else wrong!!!"
}
