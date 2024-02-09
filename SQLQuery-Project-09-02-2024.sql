-- 1. Conteggio dei verbali trascritti
-- select count(*) from VERBALE;

-- 2. Conteggio dei verbali trascritti raggruppati per anagrafe
-- select fk_IdAnagrafica, count(*) As VerbaliTrascritti from VERBALE group by fk_IdAnagrafica;

-- 3. Conteggio dei verbali trascritti raggruppati per tipo di violazione
-- select fk_IdViolazione, count(*) As VerbaliTrascritti from Verbale group by fk_IdViolazione;

-- 4. Totale dei punti decurtati per ogni anagrafe
-- select fk_IdAnagrafica, sum(PuntiDecurtati) as TotalePuntiDecurtati from VERBALE group by fk_IdAnagrafica;

-- 5. Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo
-- select A.Cognome, A.Nome, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti, V.PuntiDecurtati from ANAGRAFICA A join Verbale V on A.IdAnagrafica = V.fk_IdAnagrafica where A.Città = 'Palermo';

-- 6. Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009
-- select A.Cognome, A.Nome, A.Indirizzo, V.DataViolazione, V.Importo, V.DecurtamentoPunti, V.PuntiDecurtati from ANAGRAFICA A join VERBALE V on A.IdAnagrafica = V.fk_IdAnagrafica where V.DataViolazione between '2009-02-01' and '2009-07-31';

-- 7. Totale degli importi per ogni anagrafico
-- select fk_IdAnagrafica, sum(Importo) as TotaleImporti from VERBALE group by fk_IdAnagrafica;

-- 8. Visualizzazione di tutti gli anagrafici residenti a Palermo
-- select * from ANAGRAFICA where Città = 'Palermo';

-- 9. Query parametrica che visualizzi Data violazione, Importo e decurtamento punti relativi ad una certa data



-- 10. Conteggio delle violazioni contestate raggruppate per Nominativo dell’agente di Polizia
-- select NominativoAgente, count(*) as ViolazioniContestate from VERBALE group by NominativoAgente;

-- 11. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino il decurtamento di 5 punti
-- select A.Cognome, A.Nome, A.Indirizzo, V.DataViolazione, V.Importo, V.DecurtamentoPunti, V.PuntiDecurtati from ANAGRAFICA A join VERBALE V on A.IdAnagrafica = V.fk_IdAnagrafica where V.PuntiDecurtati > 5;

-- 12. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino l’importo di 400 euro
-- select A.Cognome, A.Nome, A.Indirizzo, V.DataViolazione, V.Importo, V.DecurtamentoPunti, V.PuntiDecurtati from ANAGRAFICA A join VERBALE V on A.IdAnagrafica = V.fk_IdAnagrafica where V.Importo > 400;