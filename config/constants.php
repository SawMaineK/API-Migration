<?php
	
	defined('API_ERROR_STATUS') OR define('API_ERROR_STATUS', 0);
	defined('API_SUCCESS_STATUS') OR define('API_SUCCESS_STATUS', 1);

	defined('TRANSACTION_STATUS_ACTIVE') OR define('TRANSACTION_STATUS_ACTIVE', 1);
	defined('TRANSACTION_STATUS_REFUND') OR define('TRANSACTION_STATUS_REFUND', 2);
	defined('TRANSACTION_STATUS_INACTIVE') OR define('TRANSACTION_STATUS_INACTIVE', 0);
	defined('TRANSACTION_STATUS_PROCESSED') OR define('TRANSACTION_STATUS_PROCESSED', 3);
	defined('TRANSACTION_STATUS_DELIVERED') OR define('TRANSACTION_STATUS_DELIVERED', 4);
?>