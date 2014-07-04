
#!/bin/bash

cd $1
outPutFileName=$2
echo $outPutFileName

cerOutPemName="cert.pem"
keyOutPerName="key.pem"

openssl pkcs12 -export -in $cerOutPemName -inkey $keyOutPerName -certfile *.certSigningRequest -name $outPutFileName -out ${outPutFileName}.p12


rm -f $cerOutPemName
rm -f $keyOutPerName

echo "**********生成证书文件***************"

ls ${outPutFileName}.p12

echo "*************结束*******************"
