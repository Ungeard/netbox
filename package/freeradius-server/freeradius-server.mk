################################################################################
#
# freeradius-server
#
################################################################################

FREERADIUS_SERVER_VERSION = 3.0.25
FREERADIUS_SERVER_SOURCE  = freeradius-server-$(FREERADIUS_SERVER_VERSION).tar.gz
FREERADIUS_SERVER_SITE = https://github.com/FreeRADIUS/freeradius-server/releases/download/release_3_0_25
#https://github.com/FreeRADIUS/freeradius-server/releases/download/release_3_0_25/freeradius-server-3.0.25.tar.gz
FREERADIUS_SERVER_LICENSE = GNU
FREERADIUS_SERVER_LICENSE_FILES = LICENSE

FREERADIUS_SERVER_CONF_OPTS = 				\
	ax_cv_cc_builtin_choose_expr=no			\
	ax_cv_cc_builtin_types_compatible_p=no		\
	ax_cv_cc_builtin_bswap64=no			\
	ax_cv_cc_bounded_attribute=no			\
	--with-threads					#\
	--enable-strict-dependencies 			\
        --with-openssl-includes=${STAGING_INCDIR} 	\
        --with-openssl-libraries=${STAGING_LIBDIR} 	\
        --without-rlm_ippool 				\
        --without-rlm_cache_memcached 			\
        --without-rlm_counter 				\
        --without-rlm_couchbase 			\
        --without-rlm_dbm 				\
        --without-rlm_eap_tnc 				\
        --without-rlm_eap_ikev2 			\
        --without-rlm_opendirectory 			\
        --without-rlm_redis 				\
        --without-rlm_rediswho 				\
        --without-rlm_sql_db2 				\
        --without-rlm_sql_firebird 			\
        --without-rlm_sql_freetds 			\
        --without-rlm_sql_iodbc 			\
        --without-rlm_sql_oracle 			\
        --without-rlm_sql_sybase 			\
        --without-rlm_sql_mongo 			\
        --without-rlm_sqlhpwippool 			\
        --without-rlm_securid 				\
        --without-rlm_unbound 				\
        --without-rlm_python 				\
	--without-rlm_krb5				\
	--without-rlm_ldap				\
	--without-rlm_pam				\
	--without-rlm_perl				\
	--without-rlm_rest				\
	--without-rlm_sql_mysql				\
	--without-rlm_sql_postgresql			\
	--without-rlm_sql_unixodbc			\
	--without-rlm_sql_sqlite			\
        ac_cv_path_PERL=${bindir}/perl 			

$(eval $(autotools-package))

