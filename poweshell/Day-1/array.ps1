#Arrays
cls
#method 1 - old
$arr1 =10,20,30,40,50
$arr1.GetType()

# method 2 - new
$arr2=@()
$arr2.GetType()

$arr3=@("a","b","c")
$arr3.GetType()
$arr3
cls
$arr4=@(1..10)
$arr4
$arr4.Count
$arr4.Length
cls
#Multi-dimentional array
$arr5=@(
        @(1,2,3),
        @("a","b","c"),
        @(Get-Process)
        
)
$arr5.gettype()
$arr5[0][0]
$arr5[-2][-1]
      