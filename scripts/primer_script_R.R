setwd("C:/Users/FullComputador/OneDrive/Documentos/redaccion_documentos_R")

dir.create("scripts")

#Fenómeno: Moral tributaria

#Corrupción: mide la percepción de corrupción de un Estado o país.

corrupcion <- factor(c("Baja","Media","Alta"),ordered = TRUE) 
corrupcion

#Carga tributaria: Relación porcentual entre la base imponible y el impuesto pagado al Estado

carga_trib <- c(0.214,0.3, 0.15)
carga_trib

#Inestabilidad política: mide la percepción de inestabilidad en un Estado o país

inest_politica <- factor(c("Baja","Media","Alta"),ordered = TRUE) 

#Edad: Edad del contribuyente

edad <- c(35,40,18,65)
edad

#Estatus laboral: Condición de empleo del contrbuyente

est_lab <- factor(c("Independiente", "Asalariado")) 


#Búsqueda de ayuda: Para la estimación de la moral tributaria, generalmente se emplea regresiones logísticas, para estimar la probabilidad de un fenómeno

help.search("lm")

