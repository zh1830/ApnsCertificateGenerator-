
#!/bin/bash

cd $1

keyOutPerName="key.pem"

cerOutPemName="cert.pem"

openssl x509 -in *.cer -inform DER -out $cerOutPemName -outform PEM

openssl pkcs12 -nocerts -out $keyOutPerName -in *.p12
