# virallinen harjoitus; https://medium.com/hacker-toolbelt/recon-ng-how-to-ii-986a82d47dc3
#
# tässä harjoituksessa suoritettaan verkkontutkinta. 
# ensimmäisenä luodaan oma workspace tila (uusi tietokanta), johon kerätään tietoja ja tietojen keräämisessä pitäisi olla helppo, mutta tee järjestyksessä. Lisätään esim. joku sivusto verkko domaini "medium.com"

#################################################################
# pieni lunttilappu kuinka luodaan ja poistettaan "workspaces"

[recon-ng][default] > workspaces 
create  list    load    remove  
[recon-ng][default] > workspaces list

  +----------------------------------+
  | Workspaces |       Modified      |
  +----------------------------------+
  | autocars   | 2023-12-18 21:05:08 |
  | default    | 2023-12-09 20:56:31 |
  | ipgeo      | 2023-12-10 16:41:58 |
  +----------------------------------+

# poistaminen 
[recon-ng][default] > workspaces remove ipgeo
[recon-ng][default] > workspaces list

  +----------------------------------+
  | Workspaces |       Modified      |
  +----------------------------------+
  | autocars   | 2023-12-18 21:05:08 |
  | default    | 2023-12-09 20:56:31 |
  +----------------------------------+

# uusi database (tietokanta - lista) (puuttuu API key, mutta ignoraa niitä)
[recon-ng][default] > workspaces create domainit
[!] 'whoxy_api' key not set. whoxy_whois module will likely fail at runtime. See 'keys add'.
[!] Module 'recon/domains-companies/censys_companies' disabled. Dependency required: 'me 'CensysIPv4' from 'censys.search' (/usr/lib/python3/dist-packages/censys/search/__init__.py)'.                                                                                                                                                   
[!] 'hibp_api' key not set. hibp_breach module will likely fail at runtime. See 'keys add'.
...........
[!] 'google_api' key not set. pushpin module will likely fail at runtime. See 'keys add'.
[recon-ng][domainit] > workspaces list

  +----------------------------------+
  | Workspaces |       Modified      |
  +----------------------------------+
  | autocars   | 2023-12-18 21:05:08 |
  | default    | 2023-12-09 20:56:31 |
  | domainit   | 2023-12-26 11:02:34 |
  +----------------------------------+

# modules - moduuli haettaan tai jotakin mennään siihen polkuun esim. suoritettaan hostnimien verkkotunnuksien hakemistoa
[recon-ng][domainit] > modules load
Loads a module

Usage: modules load <path>

##########################
# HARJOITUS START HERE
# lisätään joku sivuston nimi "domainit-listan alle", just tämä "medium.com" sivusto ja tarkistellaan
# db = database
# $db insert domain.com - listään "sivuston nimi" alle

[recon-ng][domainit] > db insert medium.com
[*] Invalid table name.
[recon-ng][domainit] > db insert domains
domain (TEXT): medium.com
notes (TEXT): 
[*] 1 rows affected.
[recon-ng][domainit] > show domains

  +-------------------------------------------+
  | rowid |   domain   | notes |    module    |
  +-------------------------------------------+
  | 1     | medium.com |       | user_defined |
  +-------------------------------------------+

##############################
##### hosts #####
# tähän verkkosivustoon "medium.com" tarkistellaan sitä hostia käyttämällä; Google hostname enumerator
# mene siihen polkuun ja suorita "run"
[*] 1 rows returned
[recon-ng][domainit] > 
[recon-ng][domainit] > modules load recon/domains-hosts/google_site_web
[recon-ng][domainit][google_site_web] > run

----------
MEDIUM.COM
----------
[*] Searching Google for: site:medium.com
[!] Google CAPTCHA triggered. No bypass available.










