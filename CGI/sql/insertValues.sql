insert into objects values('nc1'),('nc2'),('nc3'),('nc6'),('nc4'),('nc7'),('nc5'),('c1'),('c2'),('c3'),('c4'),('c5'),('nc8');

insert into abstractDoor values('d1',1050,2050,55,60,100),('d2',480,740,211,211,211),('d3',99,99,0,0,255),('d4',200,100,55,60,100),('d5',60,54,10,10,100);

insert into types values('nct1','beam','concrete beam'),('nct2','bench','wooden'),('nct3','switch',''),('nct4','amplifier',''),('nct5','stage','concrete stage'),('ct1','classRoom',''),('ct2','ampBox',''),('ct3','chalkBox','');

insert into containerConcreteTypes values('ct1',6100,13600,3180,280,''),('ct2',490,590,750,50,''),('ct3',99,99,99,10,'');
insert into nonContainerConcreteTypes values('nct1',6100,260,570,''),('nct2',900,750,750,''),('nct3',6100,2000,300,''),('nct4',350,250,100,'');
insert into propertyTypes values('pT1','boolean'),('pT2','number'),('pT3','string'),('pT4','date');

insert into properties values('pr1','fragile','pT1',''),('pr2','weight','pT2',''),('pr3','temp','pT2',''),('pr4','side UP','pT3',''),('pr5','expiry','pT4','');

insert into abstractWall values('w01',13600,3180,255,250,205),('w02',13600,3180,255,250,205),('w03',6100,3180,255,250,205),('w04',6100,3180,255,250,205),('w05',6100,13600,255,250,205),('w06',6100,13600,255,250,205), -- room walls

('w07',500,760,211,211,211),('w08',500,760,211,211,211),('w09',600,760,211,211,211),('w10',600,760,211,211,211),('w11',500,600,211,211,211),('w12',500,600,211,211,211), ---- ampbox walls

('w13',100,100,0,0,255),('w14',100,100,0,0,255),('w15',100,100,0,0,255),('w16',100,100,0,0,255),('w17',100,100,0,0,255),('w18',100,100,0,0,255), --chalkboxwall

('w19',260,570,255,250,205),('w20',260,570,255,250,205),('w21',6100,570,255,250,205),('w22',6100,570,255,250,205),('w23',6100,260,255,250,205),('w24',6100,260,255,250,205), -- beam walls

('w25',900,750,218,165,32),('w26',900,750,218,165,32),('w27',750,750,255,250,205),('w28',750,750,255,250,205),('w29',900,750,255,250,205),('w30',900,750,255,250,205), -- bench walls

('w31',100,100,211,211,211),('w32',100,100,211,211,211),('w33',40,100,211,211,211),('w34',40,100,211,211,211),('w35',100,40,211,211,211),('w36',100,40,211,211,211), -- switch walls

('w37',350,100,255,250,205),('w38',350,100,255,250,205),('w39',250,100,255,250,205),('w40',250,100,255,250,205),('w41',500,760,255,250,205),('w42',500,760,255,250,205); -- amplifire walls

insert into unitList values('u01','degree-celcius','C','pr3'),('u02','kilogram','kg','pr2'),('u03','sideId','','pr4'),('u04','true','','pr1');

insert into WallDoor values('w01','d1',4100,1130,'BCDA'),('w01','d2',5650,1130,'CDAB'),('w01','d3',12530,1130,'ADCB'),('w07','d4',10,10,'BADC'),('w13','d5',10,10,'BCDA');


insert into containerObjects values('c1','ct1','classRoom',''),('c2','ct2','ampBox',''),('c3','ct3','chalkbox','');

insert into nonContainerObjects values('nc1','nct1','beam',''),('nc2','nct2','bench',''),('nc3','nct3','switch',''),('nc4','nct4','amplifier','');

insert into containerObjectProperties values('c1','UID01','pr1','true','','amp boxP'),('c2','UID02','pr3',20,'','roomP');

insert into nonContainerObjectProperties values('nc1','UID03','pr2',100,'','beamP'),('nc2','UID04','pr4','ABCD','','benchP');

insert into containerConcreteTypeFaces values('ct1','w01','w02','w03','w04','w05','w06'),('ct2','w07','w08','w09','w10','w11','w12'),('ct3','w13','w14','w15','w16','w17','w18');

insert into nonContainerConcreteTypeFaces values('nct1','w19','w20','w21','w22','w23','w24'),('nct2','w25','w26','w27','w28','w29','w30'),('nct3','w31','w32','w33','w34','w35','w36'),('nct4','w37','w38','w39','w40','w41','w42');

insert into containerConcreteTypeProperties values('ct1','pr3',20,'u01',''),('ct2','pr1','flase','u04',''),('ct3','pr1','true','u04','');

insert into nonContainerConcreteTypeProperties values('nct1','pr2',50,'u02',''),('nct2','pr4','ABCD','u03',''),('nct3','pr4','ABCD','u03',''),('nct4','pr3',10,'u01','');

-- insert into directChild_parent values('nc1','c1',1,2420,1,'ABCD','ABCD'),('nc2','c1',900,5560,2430,'DABC','ABCD'),('nc3','c1',6099,7820,1900,'CDAB','ABCD'),('c2','c1',6100,650,1500,'DABC','ABCD'),('c3','c1',6090,3041,2430,'ABCD','ABCD'),('nc4','c2',150,150,200,'ABCD','BCDA');


insert into directChild_parent values('nc1','c1',1,2420,1,'ABCD','ABCD'),('nc2','c1',900,5560,2430,'DABC','ABCD'),('nc4','c2',6099,7820,1900,'CDAB','ABCD'),('nc3','c3',6100,650,1500,'DABC','ABCD'),('c2','c3',6090,3041,2430,'ABCD','ABCD'),('c4','c1',150,150,200,'ABCD','BCDA'),('nc5','c4',150,150,200,'ABCD','BCDA'),('nc6','c4',150,150,200,'ABCD','BCDA'),('c5','c4',150,150,200,'ABCD','BCDA'),('nc7','c5',150,150,200,'ABCD','BCDA'),('c1','c2',150,150,200,'ABCD','BCDA');

delete from noncontainerconcretetypefaces where noncontainerconcretetypeid = 'nct4';
