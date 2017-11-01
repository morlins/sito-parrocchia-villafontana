<?php
// Before removing this file, please verify the PHP ini setting `auto_prepend_file` does not point to this.

if (file_exists('/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/plugins/wordfence/waf/bootstrap.php')) {
	define("WFWAF_LOG_PATH", '/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/wflogs/');
	include_once '/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/plugins/wordfence/waf/bootstrap.php';
}
?>