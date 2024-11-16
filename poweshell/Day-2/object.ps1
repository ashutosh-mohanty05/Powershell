#list all the cmdlets that has object in it
Get-Command -Noun Object         #you’re asking PowerShell to list all cmdlets where the noun is ‘Object'
Get-Command *-object

# creating a new object
$obj = New-Object psobject
$obj.GetType()                   #listing the type of object
$obj | Get-Member                #listing the default 4 members for the object

#add new member to the object
Get-Command -Noun Member         #list all the cmdlets with member
Add-Member -InputObject $obj -MemberType NoteProperty -Name "Name" -Value "ashu"
$obj | Get-Member

Add-Member -InputObject $obj -MemberType NoteProperty -Name "status" -Value "Don"
$obj | Get-Member

#add multiple members to an object.
#create all the members using hashtable
$newobj =@{
    key1="value1"
    key2="value2"
    key3="value3"
    key4="value4"
    key5="value5"

}

# creating a new object
$obj2 = New-object psobject -Property $newobj
$obj2 | Get-Member