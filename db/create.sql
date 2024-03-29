--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  merk INTEGER,
  kleur TEXT,
  nationaliteit TEXT,
  model INTEGER,
  motor TEXT,
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)  
);

/* dingen om toetevoegen*/
DROP TABLE IF EXISTS accesoires; 
CREATE TABLE accesoires (
  a_id INTEGER PRIMARY KEY AUTOINCREMENT,
  a_naam TEXT,
  a_kleur TEXT,
  soort INTEGER
);

DROP TABLE IF EXISTS uitlaat; 
CREATE TABLE uitlaat (
  u_id INTEGER PRIMARY KEY AUTOINCREMENT,
  u_kleur TEXT,
  u_merk TEXT,
  instalatie_tijd INTEGER
);
/* effe dingen splitsen voor logica */

DROP TABLE IF EXISTS uitlaatId_tabel; 
CREATE TABLE uitlaatId_tabel (
  ui_id INTEGER PRIMARY KEY AUTOINCREMENT,
  auto_merk INTEGER,
  uitlaat_merk INTEGER
);

DROP TABLE IF EXISTS accesoiresId_tabel; 
CREATE TABLE accesoiresId_tabel (
  ac_id INTEGER PRIMARY KEY AUTOINCREMENT,
  auto_merk INTEGER,
  accesoires_id INTEGER
);

DROP TABLE IF EXISTS accesoiressoorten; 
CREATE TABLE accesoiressoorten (
  acs_id INTEGER PRIMARY KEY AUTOINCREMENT,
  acs_naam TEXT
);

DROP TABLE IF EXISTS model; 
CREATE TABLE model (
  m_id INTEGER PRIMARY KEY AUTOINCREMENT,
  m_naam TEXT
);

DROP TABLE IF EXISTS uitlaatsoorten;
CREATE TABLE uitlaatsoorten (
uis_id INTEGER PRIMARY KEY AUTOINCREMENT,
uis_naam TEXT
);

DROP TABLE IF EXISTS merksoort;
CREATE TABLE merksoort (
merk_id INTEGER PRIMARY KEY AUTOINCREMENT,
merk_naam TEXT
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--
/* nu alles erin zetten jippie */
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('M5', 'Een enorm sportieve rear wheel drive auto die een enorme hoeveelheid horsepower creert en ook zeker op de lange stukken enorm snel kan gaan', '816905633-0', 37000 , 2,"zwart", 'duits', 1, 'v10');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('rs7', 'Een erg sportieve sedan met veel ruimte uitgerust met een 581 hp sterke motor ook goeie AWD zodat u alle seizoenen op weg kunt', '077030122-3', 199950, 2,'grijs', 'duits', 1,  'v8');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('c63s', 'Of u nou een CEO bent of een jochie die plezier wilt hebben het kan allemaal in deze luxe uitgeruste mercedes.', '445924201-X', 12561, 3,"blauw", 'duits', 1, 'v8');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('Charger', 'Een echte Amerikaanse bak die gevaarlijk snel kan op de rechte stukken maar in de bochten levensgevaarlijk kan zijn met de RWD en de uitlaat brult als een echt monster', '693155505-7', 80000, 5,"oranje", 'amerikaans', 1, 'v8');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('Panemera', 'De auto waarmee u wilt gezien worden hip sportief en veel uitstraling laat het geld rollen netzoals deze wielen over de weg doen', '492662523-7', 118000, 4,"rood", 'duits', 1, 'v8');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('rs3', 'Een klein wagentje maar zeker niet te onderschatten in de bochten zal die er zeker iedreen uit rijden en ook nog is een mooie vorm voor een goeie prijs', '492662523-7', 93000, 1,"groen", 'duits', 3, 'v5');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('a45s', 'Luxe, klein, goeie prijs, betrouwbaar, ik beschrijf nu een echte droom auto maar het is gewoon een mercedes die zeker wel wat meer aandacht verdient', '492662523-7', 70000, 3, "wit", 'duits', 3, 'v4');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('gt2rs', 'De auto die gevreesd is. hij heeft het nurgenberg track record op zijn naam staan en is dus enorm snel maar niet te hard gaan want boetes zijn enorm duur', '492662523-7', 389900, 4,"grijs met zwarte strepen", 'duits', 2, 'F6');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('M4', 'Een enorm getunde sport wagen en ook erg bekend onder zakenmannen en street races door zzijn ligte en confortabele interieur', '492662523-7', 128000, 4,"zwart", 'duits', 2, 'v6');
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('challenger', 'sta je bij het stop ligt en zie je deze auto naast je staan en je denkt deze boot race ik er makkelijk uit Tip: niet doen deze wagen is enorm snel op de rechte lijnen', '492662523-7', 135000, 4,"rood", 'duits', 2, 'v8');

/*accesoires informatie*/
insert into accesoires (a_naam, a_kleur, soort) values ('Spoiler', 'zwart', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('LED lampen', 'RBG', 2);  
insert into accesoires (a_naam, a_kleur, soort) values ('voorlampen', 'wit', 2); 
insert into accesoires (a_naam, a_kleur, soort) values ('achterlampen', 'rood', 2);
insert into accesoires (a_naam, a_kleur, soort) values ('turbo', 'grijs', 3);  
insert into accesoires (a_naam, a_kleur, soort) values ('supercharger', 'grijs', 3); 
insert into accesoires (a_naam, a_kleur, soort) values ('Front splitter', 'zwart', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('defuser', 'zwart', 1);

/*uitlaat informatie*/
insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values (1, 'zwart', 60);
insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values (2, 'groen', 60);
insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values (3, 'zwart', 70);

/*uitlaat merken*/
insert into uitlaatsoorten (uis_naam) values ('Akraapovic');
insert into uitlaatsoorten (uis_naam) values ('Armytrix');
insert into uitlaatsoorten (uis_naam) values ('Milltek');

/*modellen*/
insert into model (m_naam) values('sedan');
insert into model (m_naam) values('coupe');
insert into model (m_naam) values('hatchback');

/*soorten accesoiressen*/
insert into accesoiressoorten (acs_naam) values('visuele onderdelen');
insert into accesoiressoorten (acs_naam) values('verlichting');
insert into accesoiressoorten (acs_naam) values('motor upgrades');

/*merk auto's*/
insert into merksoort (merk_naam) values('audi');
insert into merksoort (merk_naam) values('bmw');
insert into merksoort (merk_naam) values('mercedes');
insert into merksoort (merk_naam) values('porsche');
insert into merksoort (merk_naam) values('dodge');

/*welke uitlaat kan op welke auto*/
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (1, 2);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (1, 3);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (2, 1);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (2, 3);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (3, 1);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (3, 2);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (3, 3);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (4, 2);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (4, 3);
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (5, 1);

/* welke accesoires op welke auto kan*/
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (1, 1);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (1, 2);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (1, 3);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (1, 4);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (1, 5);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (2, 4);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (2, 8);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (2, 2);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (3, 1);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (3, 3);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (3, 7);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (3, 2);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (4, 1);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (4, 3);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (4, 5);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (4, 6);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (5, 1);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (5, 2);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (5, 3);
insert into accesoiresId_tabel(auto_merk, accesoires_id) values (5, 6);