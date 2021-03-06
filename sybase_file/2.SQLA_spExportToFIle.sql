ALTER PROCEDURE "DBA"."Export_to_MySQL" (IN arg_id INTEGER DEFAULT NULL) 
BEGIN

    IF (arg_id IS NULL) THEN
		UNLOAD TABLE LOG_HUMIDADETEMPERATURA TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT\\Log_HumidadeTemperatura.txt';
    	UNLOAD TABLE LOG_VARIAVEISMEDIDAS TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT\\Log_VariaveisMedidas.txt';
        UNLOAD TABLE LOG_VARIAVEIS TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT\\Log_Variaveis.txt';
        UNLOAD TABLE LOG_CULTURA TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT\\Log_Cultura.txt';
    	UNLOAD TABLE LOG_INVESTIGADORES TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT\\Log_Investigadores.txt';
        UNLOAD TABLE LOG_MEDICOES TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT\\Log_Medicoes.txt';
        UNLOAD TABLE LOG_CONSULTAS TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT\\Log_Consultas.txt';
	ELSE 
		UNLOAD SELECT TOP arg_id * FROM LOG_HUMIDADETEMPERATURA TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT3\\Log_HumidadeTemperatura.txt';
    	UNLOAD SELECT TOP arg_id * FROM LOG_VARIAVEISMEDIDAS TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT3\\Log_VariaveisMedidas.txt';
        UNLOAD SELECT TOP arg_id * FROM LOG_VARIAVEIS TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT3\\Log_Variaveis.txt';
        UNLOAD SELECT TOP arg_id * FROM LOG_CULTURA TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT3\\Log_Cultura.txt';
    	UNLOAD SELECT TOP arg_id * FROM LOG_INVESTIGADORES TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT3\\Log_Investigadores.txt';
        UNLOAD SELECT TOP arg_id * FROM LOG_MEDICOES TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT3\\Log_Medicoes.txt';
        UNLOAD SELECT TOP arg_id * FROM LOG_CONSULTAS TO 'Z:\\VM_SHAREDFOLDER\\FILEStoEXPORTandIMPORT3\\Log_Consultas.txt';
	END IF; 	
END