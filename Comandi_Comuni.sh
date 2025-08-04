@echo off

echo SEZIONE 1: Navigazione e gestione file
echo cd..                              &rem 	Torna alla cartella superiore rispetto a quella attuale
echo cd %%userprofile%%                &rem 	Accede direttamente alla cartella dellutente corrente
echo dir *txt                          &rem 	Elenca tutti i file con determinata estensione - in questo caso, .txt - nella cartella corrente
echo del file.txt                      &rem 	Elimina il file specificato - file.txt - dalla directory
echo rename file.txt file2.txt         &rem 	Rinomina un file da file.txt a file2.txt
echo move file.txt ..                  &rem 	Sposta file.txt nella cartella superiore
echo cls                               &rem 	Pulisce tutto il contenuto visualizzato nel prompt dei comandi

echo SEZIONE 2: Scrittura e redirezione
echo echo Ciao ^>^> file.txt           &rem 	Aggiunge la parola Ciao alla fine del file file.txt - senza sovrascrivere il contenuto
echo echo: ^>^> file.txt               &rem 	Aggiunge una riga vuota al file file.txt
echo tasklist ^> file.txt              &rem 	Salva l’elenco dei processi attivi in file.txt - sovrascrive il contenuto, se esistente
echo tasklist ^>^> file.txt            &rem 	Aggiunge l’elenco dei processi attivi a file.txt - senza sovrascrivere il contenuto precedente

echo SEZIONE 3: Gestione processi
echo tasklist                          &rem 	Visualizza tutti i processi attivi sul sistema
echo tasklist ^| findstr notepad       &rem 	Cerca e mostra informazioni solo su un determinato processo - in questo caso, notepad
echo taskkill /f /pid 9108             &rem 	Termina forzatamente il processo con un determinato PID - in questo caso, 9108

echo SEZIONE 4: IP e DNS
echo ipconfig                          &rem 	Mostra informazioni di base sull’indirizzo IP e configurazione rete
echo ipconfig /all                     &rem 	Mostra informazioni dettagliate su tutte le schede di rete
echo ipconfig /release                 &rem 	Rilascia l’indirizzo IP assegnato dalla rete, disconnettendolo temporaneamente
echo ipconfig /renew                   &rem 	Richiede un nuovo indirizzo IP al server DHCP
echo ipconfig /renew "Ethernet"        &rem 	Richiede un nuovo indirizzo IP per una determinata interfaccia - in questo caso Ethernet
echo ipconfig /displaydns              &rem 	Mostra la cache DNS attualmente memorizzata
echo ipconfig /flushdns                &rem 	Cancella tutta la cache DNS

echo SEZIONE 5: nslookup e DNS avanzato
echo nslookup google.com               &rem 	Risolve l indirizzo IP associato a google.com usando il DNS predefinito
echo nslookup google.com 1.1.1.1       &rem 	Usa un server DNS specifico - in questo caso, 1.1.1.1 - per risolvere google.com
echo nslookup -type=mx google.com      &rem 	Mostra i record MX - posta elettronica - per google.com
echo nslookup -type=txt google.com     &rem 	Mostra i record TXT - ? - per google.com
echo nslookup -type=ptr google.com     &rem 	Esegue una risoluzione inversa: IP → nome host

echo SEZIONE 6: Diagnostica di rete
echo ping google.com                   &rem 	Verifica se il sito è raggiungibile e misura il tempo di risposta
echo ping -t google.com                &rem 	Esegue il ping continuo fino all interruzione manuale
echo tracert google.com                &rem 	Mostra il percorso dei nodi - hop - attraversati per raggiungere il sito
echo netstat                           &rem 	Mostra le connessioni di rete attive
echo netstat -af                       &rem 	Mostra indirizzi e porte aperte in modo dettagliato
echo netstat -b                        &rem 	Mostra quali programmi/applicazioni stanno usando le connessioni
echo netstat -bo                       &rem 	Mostra anche il PID dei programmi che usano le connessioni

echo SEZIONE 7: Wi-Fi e IP avanzato
echo getmac /v                         				&rem 	Visualizza gli indirizzi MAC di tutte le schede con dettagli
echo arp -a                            				&rem 	Mostra la tabella ARP, ovvero gli indirizzi IP e MAC dei dispositivi in LAN
echo netsh wlan show wlanreport        				&rem 	Crea e mostra un report dettagliato sullo stato della rete Wi-Fi
echo netsh interface ip show address ^| findstr "IP Address"   	&rem 	Mostra solo gli indirizzi IP attivi configurati
echo netsh interface ip show dnsservers                    	&rem 	Elenca i server DNS configurati per ogni interfaccia
echo netsh advfirewall set allprofiles state off            	&rem 	Disattiva il firewall per tutti i profili di rete

echo SEZIONE 8: Diagnostica e riparazione di sistema
echo systeminfo                        		&rem 	Mostra informazioni dettagliate su hardware, sistema operativo e configurazione
echo powercfg /energy                  		&rem 	Analizza l’efficienza energetica del sistema e genera un report HTML
echo chkdsk /f                         		&rem	Controlla il disco e corregge automaticamente gli errori rilevati
echo chkdsk /r                        		&rem	Esegue un controllo approfondito e tenta il recupero di settori danneggiati
echo sfc /scannow                      		&rem	Scansiona e ripara automaticamente i file di sistema corrotti
echo DISM /Online /Cleanup-Image /CheckHealth   &rem	Verifica, senza modificare nulla, se ci sono problemi nell immagine del sistema
echo DISM /Online /Cleanup-Image /ScanHealth    &rem 	Scansiona l immagine di sistema alla ricerca di errori
echo DISM /Online /Cleanup-Image /RestoreHealth &rem 	Ripara l immagine del sistema con file da Windows Update o una sorgente locale

exit
