#!/usr/bin/expect -f

set path [lindex $argv 0]
set outPutFileName [lindex $argv 1]
set shFilePath [lindex $argv 2];

spawn sh ${shFilePath}/keyToPem.sh $path

expect "Enter Import Password:"
send "zh1830\n"
expect "Enter PEM pass phrase:"
send "zh1830\n"
expect "Verifying - Enter PEM pass phrase:"
send "zh1830\n"
expect eof

spawn sh ${shFilePath}/cerAndKeyToP12.sh  $path $outPutFileName

expect "Enter pass phrase for key.pem"
send "zh1830\n"

expect "Enter Export Password:"
send "zh1830\n"

expect "Verifying - Enter Export Password:"
send "zh1830\n"
expect eof

