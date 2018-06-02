#!/bin/bash
# ----------------------------------------------------------------------------------------------
GSM_OPTIONS_FILE_NAME="options-mobile"
# -----------------------------------------------
GSM_MOBILE_AUTH_FILE_NAME="mobile-auth"
#GSM_MOBILE_AUTH_FILE_NAME="mobile-noauth"
# -----------------------------------------------
GSM_MOBILE_CHAT_FILE_NAME="mobile-modem.chat"
# -----------------------------------------------
GSM_APN_FILE_NAME="apn.ru._mts"
#GSM_CHAT_APN_FILE_NAME="apn.ru.megafon"
# -----------------------------------------------
GSM_PIN_CODE_FILE_NAME="pin.NONE"
#GSM_PIN_CODE_FILE_NAME="pin.CODE"
# -----------------------------------------------
GSM_MODE_FILE_NAME="mode.NONE"
#GSM_PIN_CODE_FILE_NAME="mode.GPRS"
# -----------------------------------------------
GSM_CONNECT_SH_FILE_NAME="GSM_CONNECT.sh"
# -----------------------------------------------
# ----------------------------------------------------------------------------------------------
GSM_INIT_PATH="/etc/init.d/"
GSM_PPP_PATH="/etc/ppp/"
GSM_PPP_PEERS_PATH="${GSM_PPP_PATH}peers/"
GSM_PPP_CHAT_PATH="${GSM_PPP_PATH}chatscripts/"
# ----------------------------------------------------------------------------------------------
cp ${GSM_CONNECT_SH_FILE_NAME} 		${GSM_INIT_PATH}
chmod +555 ${GSM_INIT_PATH}${GSM_CONNECT_SH_FILE_NAME}

cp ${GSM_OPTIONS_FILE_NAME} 		${GSM_PPP_PATH}

mkdir -p ${GSM_PPP_PEERS_PATH}
cp ${GSM_MOBILE_AUTH_FILE_NAME} 	${GSM_PPP_PEERS_PATH}
ln -sf ${GSM_PPP_PEERS_PATH}${GSM_MOBILE_AUTH_FILE_NAME} 	${GSM_PPP_PEERS_PATH}provider

mkdir -p ${GSM_PPP_CHAT_PATH}
cp ${GSM_APN_FILE_NAME}			${GSM_PPP_CHAT_PATH}
cp ${GSM_PIN_CODE_FILE_NAME}		${GSM_PPP_CHAT_PATH}
cp ${GSM_MODE_FILE_NAME}		${GSM_PPP_CHAT_PATH}
cp ${GSM_MOBILE_CHAT_FILE_NAME}		${GSM_PPP_CHAT_PATH}
ln -sf ${GSM_PPP_CHAT_PATH}${GSM_APN_FILE_NAME} 		${GSM_PPP_CHAT_PATH}apn
ln -sf ${GSM_PPP_CHAT_PATH}${GSM_PIN_CODE_FILE_NAME} 		${GSM_PPP_CHAT_PATH}pin
ln -sf ${GSM_PPP_CHAT_PATH}${GSM_MODE_FILE_NAME} 		${GSM_PPP_CHAT_PATH}mode
# ----------------------------------------------------------------------------------------------

exit 0
		
