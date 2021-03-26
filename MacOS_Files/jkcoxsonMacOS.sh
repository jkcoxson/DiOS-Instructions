#!/bin/bash
echo "jkcoxson's libimobiledevice build for MacOS. You're welcome. Also, subscribe to Pewdiepie and jkcoxson."
wget https://cdn.discordapp.com/attachments/595239075842228225/824859152165240863/libimobiledevice-1.0.6.dylib
mv libimobiledevice-1.0.6.dylib /usr/local/lib
wget https://cdn.discordapp.com/attachments/595239075842228225/824825543630913547/idevice_id
wget https://cdn.discordapp.com/attachments/595239075842228225/824825571796058122/idevicedebug
mv idevice_id /usr/local/bin
mv idevicedebug /usr/local/bin
chmod +x /usr/local/bin/idev*

