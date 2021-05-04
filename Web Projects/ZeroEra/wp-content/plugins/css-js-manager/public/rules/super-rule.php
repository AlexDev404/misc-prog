<?php

/**
 * Rule class format
 */
if(!class_exists("Super_Rule")):

class Super_Rule{
   
	function call($function_name, $value){
		if(method_exists($this, $function_name)){
			return $this->{$function_name}($value);
		}
	}

	function string_to_array($value){
		$array = array_map('intval',explode(",",$value));
		return $array;
	}


}

endif;