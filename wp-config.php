<?php
/**
 * Il file base di configurazione di WordPress.
 *
 * Questo file definisce le seguenti configurazioni: impostazioni MySQL,
 * Prefisso Tabella, Chiavi Segrete, Lingua di WordPress e ABSPATH.
 * E' possibile trovare ultetriori informazioni visitando la pagina: del
 * Codex {@link http://codex.wordpress.org/Editing_wp-config.php
 * Editing wp-config.php}. E' possibile ottenere le impostazioni per
 * MySQL dal proprio fornitore di hosting.
 *
 * Questo file viene utilizzato, durante l'installazione, dallo script
 * di creazione di wp-config.php. Non è necessario utilizzarlo solo via
 * web,è anche possibile copiare questo file in "wp-config.php" e
 * rimepire i valori corretti.
 *
 * @package WordPress
 */

// ** Impostazioni MySQL - E? possibile ottenere questoe informazioni
// ** dal proprio fornitore di hosting ** //
/** Il nome del database di WordPress */
define('DB_NAME', 'Sql803467_1');

/** Nome utente del database MySQL */
define('DB_USER', 'Sql803467');

/** Password del database MySQL */
define('DB_PASSWORD', 'p6myo7tux2');

/** Hostname MySQL  */
define('DB_HOST', '62.149.150.225');

/** Charset del Database da utilizare nella creazione delle tabelle. */
define('DB_CHARSET', 'utf8');

/** Il tipo di Collazione del Database. Da non modificare se non si ha
idea di cosa sia. */
define('DB_COLLATE', '');

/**#@+
 * Chiavi Univoche di Autenticazione e di Salatura.
 *
 * Modificarle con frasi univoche differenti!
 * E' possibile generare tali chiavi utilizzando {@link https://api.wordpress.org/secret-key/1.1/salt/ servizio di chiavi-segrete di WordPress.org}
 * E' possibile cambiare queste chiavi in qualsiasi momento, per invalidare tuttii cookie esistenti. Ciò forzerà tutti gli utenti ad effettuare nuovamente il login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'a)|YEDpa%I3A6j4#=)h,mO++r6f7|`gD%V,UI2G%{&vWK,`+M5(7t1pXp?|l1<r#');
define('SECURE_AUTH_KEY',  'bK&}T3+jIv0.jkmeV5nwP},t-+uZ.tW2mz}#)C=TN1t)FyQ2D$FF:q*FToH$~uS]');
define('LOGGED_IN_KEY',    '={oq+A-+_H_F9ol2Yt/,^2|CrjY$Eo5hN D_;7uyd%1*#-/}[4<XGhI7|~o5fg&Z');
define('NONCE_KEY',        '{!-x%/D@[*anYeaX),M+yx!_q xqe9GTaK[6r[lcQ[3|ONvx~=Ga#)z,F(0!|N`)');
define('AUTH_SALT',        'H|RgV}D%MFh)MUFBm|Rp8Bs/T<YbU<{:u_$G:8bw(y;t+_ZH~;,Z)x{eU?IG^R3d');
define('SECURE_AUTH_SALT', 'ue)~$2cFm}!K7gN`]zF=zL9CVf9K. _.[+;zqH&z:5qMkP@d3W^,z*gz5:?-)U*Q');
define('LOGGED_IN_SALT',   'Xwvwdv.-eh_|MvzrHu!`D!#2gJ-eQ(>+|_-YD&J`hQ4?T;.)r%{uB84ixa85:A@#');
define('NONCE_SALT',       '=+|#MRO;<I(kbHZpJkDx-DGc#8uuU(t;8U-b_/?rbY2|%&35YCA%O;Crf;S.xUpw');

/**#@-*/

/**
 * Prefisso Tabella del Database WordPress .
 *
 * E' possibile avere installazioni multiple su di un unico database if you give each a unique
 * fornendo a ciascuna installazione un prefisso univoco.
 * Solo numeri, lettere e sottolineatura!
 */
$table_prefix  = 'wp_parrocchia';

/**
 * Lingua di Localizzazione di WordPress, di base Inglese.
 *
 * Modificare questa voce per localizzare WordPress. Occorre che nella cartella
 * wp-content/languages sia installato un file MO corrispondente alla lingua
 * selezionata. Ad esempio, installare de_DE.mo in to wp-content/languages ed
 * impostare WPLANG a 'de_DE' per abilitare il supporto alla lingua tedesca.
 *
 * Tale valore è già impostato per la lingua italiana
 */
define('WPLANG', 'it_IT');

/**
 * Per gli sviluppatori: modalità di debug di WordPress.
 *
 * Modificare questa voce a TRUE per abilitare la visualizzazione degli avvisi
 * durante lo sviluppo.
 * E' fortemente raccomandato agli svilupaptori di temi e plugin di utilizare
 * WP_DEBUG all'interno dei loro ambienti di sviluppo.
 */
define('WP_DEBUG', false);

/* Finito, interrompere le modifiche! Buon blogging. */

/** Path assoluto alla directory di WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Imposta lle variabili di WordPress ed include i file. */
require_once(ABSPATH . 'wp-settings.php');
