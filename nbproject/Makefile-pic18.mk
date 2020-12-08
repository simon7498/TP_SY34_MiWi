#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic18.mk)" "nbproject/Makefile-local-pic18.mk"
include nbproject/Makefile-local-pic18.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic18
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../framework/miwi/src/miwi_mesh.c ../framework/miwi/src/miwi_nvm.c ../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c firmware/src/main.c firmware/src/VT100.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1 ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1 ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1 ${OBJECTDIR}/firmware/src/main.p1 ${OBJECTDIR}/firmware/src/VT100.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1.d ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1.d ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1.d ${OBJECTDIR}/firmware/src/main.p1.d ${OBJECTDIR}/firmware/src/VT100.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1 ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1 ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1 ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1 ${OBJECTDIR}/firmware/src/main.p1 ${OBJECTDIR}/firmware/src/VT100.p1

# Source Files
SOURCEFILES=../framework/miwi/src/miwi_mesh.c ../framework/miwi/src/miwi_nvm.c ../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c firmware/src/main.c firmware/src/VT100.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic18.mk dist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46J50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1: ../framework/miwi/src/miwi_mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310079843" 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1 ../framework/miwi/src/miwi_mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.d ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1: ../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310079843" 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1 ../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.d ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1: ../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/638162376" 
	@${RM} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1 ../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c 
	@-${MV} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.d ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/main.p1: firmware/src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src" 
	@${RM} ${OBJECTDIR}/firmware/src/main.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/main.p1 firmware/src/main.c 
	@-${MV} ${OBJECTDIR}/firmware/src/main.d ${OBJECTDIR}/firmware/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/VT100.p1: firmware/src/VT100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src" 
	@${RM} ${OBJECTDIR}/firmware/src/VT100.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/VT100.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/VT100.p1 firmware/src/VT100.c 
	@-${MV} ${OBJECTDIR}/firmware/src/VT100.d ${OBJECTDIR}/firmware/src/VT100.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/VT100.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1: ../framework/miwi/src/miwi_mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310079843" 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1 ../framework/miwi/src/miwi_mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.d ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1310079843/miwi_mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1: ../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310079843" 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1 ../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.d ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1310079843/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1: ../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/638162376" 
	@${RM} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1 ../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c 
	@-${MV} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.d ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/638162376/drv_mrf_miwi_24j40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1: firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40" 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1 firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.c 
	@-${MV} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.d ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/system_config/8bitwdk_pic18f46j50_24j40/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/main.p1: firmware/src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src" 
	@${RM} ${OBJECTDIR}/firmware/src/main.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/main.p1 firmware/src/main.c 
	@-${MV} ${OBJECTDIR}/firmware/src/main.d ${OBJECTDIR}/firmware/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/firmware/src/VT100.p1: firmware/src/VT100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/firmware/src" 
	@${RM} ${OBJECTDIR}/firmware/src/VT100.p1.d 
	@${RM} ${OBJECTDIR}/firmware/src/VT100.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist -DXPRJ_pic18=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/firmware/src/VT100.p1 firmware/src/VT100.c 
	@-${MV} ${OBJECTDIR}/firmware/src/VT100.d ${OBJECTDIR}/firmware/src/VT100.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/firmware/src/VT100.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=icd3  -DXPRJ_pic18=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.map  -DXPRJ_pic18=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"firmware/src/system_config/8bitwdk_pic18f46j50_24j40" -I"../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/SY_34_projet.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic18
	${RM} -r dist/pic18

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
