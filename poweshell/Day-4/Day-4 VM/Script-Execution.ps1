<# 
    Script Execution
        - either you will be allowed to run the script or denied.

    ways to execute a script:
        1. local- infront of the system
        2. remote- different location

    To check the current execution policy:
        # Get-ExecutionPolicy

    Execution policy
        - EP is of 4 types:
            1. Unrestricted
                -it will allow local and remote user to run any script.
                -the most unsecured policy, not to be used in production.
            2. Restricted
                -it will not allow local or remote user to run any script
            3.RemoteSigned
                -local user is not required to run script with Digital Certificate,but
                -remote users must have a digital certificate binded with the script.
            4.AllSigned
                -both local & remote users must have Digital Certificate

    how to create a digital certificate ?
        - makecert.exe (depricated)
        - IIS Webserver
        - Linux --> openss1
        - New-SelfSignedCertificate (V5.0)

    to change the ExecutionPolicy: --> as administrator
        # Set-ExecutionPolicy <policy-name>

    to create a digitally signed script:
        - create a script                       --> save it also
        - create a certificate                  --> New-SelfSignedCertificate
        - export the certificate                --> cmdlet, GUI
        - Import/install the certificate        --> cmdlet, GUI
        - bind the certificate with the script  --> Set-AuthenticodeSignature
 #>
 
 # 1. create a script
    # path --> "E:\C:\Users\Administrator\Desktop\vm poweshell\Day-4\myscript.ps1"

 # 2. create a certificate
 New-SelfSignedCertificate -CertStoreLocation Cert:\CurrentUser\My `
 -Subject "CN=demoCert01" `
 -KeyAlgorithm RSA `
 -KeyLength 1024 `
 -Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
 -KeyExportPolicy Exportable `
 -KeyUsage DigitalSignature `
 -Type CodeSigningCert
 
 
 #listing the cert
 Get-ChildItem Cert:\CurrentUser\My

 #cmdlets for the certificate
 Get-Command *pfx*

 # 3. export the cert
 # Export-PfxCertificate
 # Get-Help Export-PfxCertificate -Online
 # Win+R --> Certmgr.msc ->

 # 4. import/install the certificate
 # Import-PfxCertificate
 # to import, go to the location and install the cert by double-clicking on it.

 # 5. binding the certificate with the script
 $file = "C:\Users\Administrator\Desktop\vm poweshell\Day-4\myscript.ps1"
 $cert = Get-ChildItem Cert:\CurrentUser\My\8EF935F7C92ABAF07EE58C8B19AFD9CD5539790C
 Set-AuthenticodeSignature -Certificate $cert -FilePath $file



 Get-ExecutionPolicy