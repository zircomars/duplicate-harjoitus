# lisää harjoituksia (kali linux)
Tänne tulee pari-muutamia kivoja harjoituksia kali linux:seen, että tänne ja vastaavasti pientä kysymyksiä

[pieni lunttilappu](#pieni-lunttilappu)
[header](#header)
[header](#header)
[header](#header)
[header](#header)


## pieni lunttilappu

Salataan tiedosto: `$ openssl enc -aes-256-cbc -in file1.txt -out file1.txt.enc`

Purettaan salaus: `$ openssl enc -d -aes-256-cbc -in file2.txt.enc -out tiedosto.purku.txt`

:exclamation: Pieni muistutus, joka kerta salataan tai purettaan tiedosto niin pitää tietää se <b>salasana</b>, kunnes päästään tiedoston sisään. Koska luonti ja purettussa kysyy sitä salasanaa.