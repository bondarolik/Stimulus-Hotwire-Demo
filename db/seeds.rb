# Reload predefined dataset and reset All PK sequencies

Country.destroy_all
State.destroy_all

# Add countries to Database
countries = ["Argentina", "Chile"]
countries.each { |c| Country.create(name: c) }


# Add States
states_ar = ["Buenos Aires", "Capital Federal", "Catamarca", "Chaco", "Chubut", "Córdoba", "Corrientes", "Entre Ríos", "Formosa", "Jujuy", "La Pampa", "La Rioja", "Mendoza", "Misiones", "Neuquén", "Río Negro", "Salta", "San Juan", "San Luis", "Santa Cruz", "Santa Fe", "Santiago del Estero", "Tierra del Fuego", "Tucumán"]

states_cl = ["Antártica Chilena (XII Región de Magallanes, CL)", "Antofagasta (II Región de Antofagasta, CL)", "Arauco (VIII Región del Biobío, CL)", "Arica (XV Región de Arica y Parinacota, CL)", "Aysén (XI Región de Aysén, CL)", "Biobío (VIII Región del Biobío, CL)", "Cachapoal (VI Región de O’Higgins, CL)", "Capitán Prat (XI Región de Aysén, CL)", "Cardenal Caro (VI Región de O’Higgins, CL)", "Cauquenes (VII Región del Maule, CL)", "Cautín (IX Región de La Araucanía, CL)", "Chacabuco (Región Metropolitana, CL)", "Chañaral (III Región de Atacama, CL)", "Chiloé (X Región de Los Lagos, CL)", "Choapa (IV Región de Coquimbo, CL)", "Colchagua (VI Región de O’Higgins, CL)", "Concepción (VIII Región del Biobío, CL)", "Copiapó (III Región de Atacama, CL)", "Cordillera (Región Metropolitana, CL)", "Coyhaique (XI Región de Aysén, CL)", "Curicó (VII Región del Maule, CL)", "Diguillín (XVI Región de Ñuble, CL)", "El Loa (II Región de Antofagasta, CL)", "Elqui (IV Región de Coquimbo, CL)", "General Carrera (XI Región de Aysén, CL)", "Huasco (III Región de Atacama, CL)", "Iquique (I Región de Tarapacá, CL)", "Isla de Pascua (V Región de Valparaíso, CL)", "Itata (XVI Región de Ñuble, CL)", "Limarí (IV Región de Coquimbo, CL)", "Linares (VII Región del Maule, CL)", "Llanquihue (X Región de Los Lagos, CL)", "Los Andes (V Región de Valparaíso, CL)", "Magallanes (XII Región de Magallanes, CL)", "Maipo (Región Metropolitana, CL)", "Malleco (IX Región de La Araucanía, CL)", "Marga Marga (V Región de Valparaíso, CL)", "Melipilla (Región Metropolitana, CL)", "Osorno (X Región de Los Lagos, CL)", "Palena (X Región de Los Lagos, CL)", "Parinacota (XV Región de Arica y Parinacota, CL)", "Petorca (V Región de Valparaíso, CL)", "Punilla (XVI Región de Ñuble, CL)", "Quillota (V Región de Valparaíso, CL)", "Ranco (XIV Región de Los Ríos, CL)", "San Antonio (V Región de Valparaíso, CL)", "San Felipe de Aconcagua (V Región de Valparaíso, CL)", "Santiago (Región Metropolitana, CL)", "Talagante (Región Metropolitana, CL)", "Talca (VII Región del Maule, CL)", "Tamarugal (I Región de Tarapacá, CL)", "Tierra del Fuego (XII Región de Magallanes, CL)", "Tocopilla (II Región de Antofagasta, CL)", "Última Esperanza (XII Región de Magallanes, CL)", "Valdivia (XIV Región de Los Ríos, CL)", "Valparaíso (V Región de Valparaíso, CL)"]


states_ar.each { |s| State.create(name: s, country: Country.find_by(name: "Argentina")) }
states_cl.each { |s| State.create(name: s, country: Country.find_by(name: "Chile")) }
