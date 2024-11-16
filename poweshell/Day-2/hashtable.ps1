<#
    Hashtable = key-value pair

#>

$ht1=@{}
$ht1.GetType()

# unordered hashtable
$ht2 = @{"Name"="Ashu" ; "Client"="LTIMindtree" ; "Location"="BBSR"}
$ht2
cls
# ordered hashtable
$ht3 = [ordered]@{"Name"="Ashu";"Client"="LTIMindtree" ; "Location"="BBSR"}
$ht3

#add key-value pair
$ht3.add("Classroom","Harida")
$ht3

#modify key-value pair
$ht3["Name"]="Ashutosh"
$ht3

#delete key-value pair
$ht3.remove("Client")
$ht3

# other operations
$ht3.Keys
$ht3.Values
$ht3["Name"]
