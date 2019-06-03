-- safe_path for steeringGen given rtl dir is ./rtl (quartus)
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE steeringGen_safe_path is
	FUNCTION safe_path( path: string ) RETURN string;
END steeringGen_safe_path;

PACKAGE body steeringGen_safe_path IS
	FUNCTION safe_path( path: string )
		RETURN string IS
	BEGIN
		return string'("./rtl/") & path;
	END FUNCTION safe_path;
END steeringGen_safe_path;
