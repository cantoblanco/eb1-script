#!/bin/bash
read -p "本脚本适用于emby Linux 4.7.14.0版本，确认是否安装？,请输入1安装,退出请输入0: " para
if [ $para == "1" ]
then
	echo "----------------继续----------------"
else
	echo "----------------退出----------------"
    exit
fi


wget --no-check-certificate https://raw.githubusercontent.com/cantoblanco/eb1-script/main/emby-happy.tar
tar -xf emby-happy.tar
cp ./emby-happy/Emby.Web.dll   /opt/emby-server/system/Emby.Web.dll 
cp ./emby-happy/connectionmanager.js /opt/emby-server/system/dashboard-ui/modules/emby-apiclient/connectionmanager.js  
cp ./emby-happy/embypremiere.js /opt/emby-server/system/dashboard-ui/embypremiere/embypremiere.js  
cp ./emby-happy/Emby.Server.Implementations.dll /opt/emby-server/system/Emby.Server.Implementations.dll  



rm -rf emby-happy.tar
rm -rf ./emby-happy/connectionmanager.js
rm -rf ./emby-happy/Emby.Server.Implementations.dll
rm -rf ./emby-happy/Emby.Web.dll
rm -rf ./emby-happy/embypremiere.js
rm -rf emby-happy.sh

echo "-------------------全部完成-------------------"
echo "运行后重启套件,清除浏览器缓存,填写任意激活码."

