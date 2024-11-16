# foreach loop
cls
$arr2 = @(1..50)
foreach( $a in $arr2 ) {
    write-host "bhai " $a

    #sleep 1
}
cls
# example 2

$websites = @("ultima.com","ltimindtree.com","youtube.com","amazon.in")

foreach($w in $websites){
    Test-Connection $w -Count 1 -ErrorAction SilentlyContinue


    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){

        Write-Host "$w is pinging" -ForegroundColor Green
    }else{
        Write-Host "$w is not pinging" -ForegroundColor Red
    }
}