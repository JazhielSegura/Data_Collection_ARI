SELECT TOP 100 
specObjID, ra, dec, z, bpt, Flux_OII_3726, Flux_OIII_4363, Flux_Hb_4861, 
Flux_OIII_5006, Flux_OI_6300, Flux_Ha_6562, Flux_SII_6716, Flux_OI_6300
FROM emissionLinesPort
WHERE 
  z < .3 AND bpt != 'BLANK' AND Flux_OII_3726 > 0 AND 
  Flux_OIII_4363 > 0 AND Flux_Hb_4861 > 0 AND Flux_OIII_5006 > 0 
  AND Flux_OI_6300 > 0 AND Flux_Ha_6562 > 0 AND Flux_SII_6716 > 0
  AND Flux_OI_6300 > 0
  AND bpt != 'Composi' AND bpt != 'Star Fo'
