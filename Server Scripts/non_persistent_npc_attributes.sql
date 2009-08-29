/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006 - 2009 The swgANH Team

---------------------------------------------------------------------------------------
*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


USE swganh;

--
-- Definition of table `non_persistent_npc_attributes`
--

DROP TABLE IF EXISTS `non_persistent_npc_attributes`;
CREATE TABLE `non_persistent_npc_attributes` (
  `npc_id` bigint(20) unsigned NOT NULL default '0',
  `attribute_id` int(11) unsigned NOT NULL default '0',
  `value` char(255) NOT NULL default '""',
  `order` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`npc_id`,`attribute_id`),
  KEY `fk_non_per_npc_att_att` (`attribute_id`),
  CONSTRAINT `fk_non_per_npc_att_att` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_non_per_npc_att_npc` FOREIGN KEY (`npc_id`) REFERENCES `non_persistent_npcs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `non_persistent_npc_attributes`
--

/*!40000 ALTER TABLE `non_persistent_npc_attributes` DISABLE KEYS */;
INSERT INTO `non_persistent_npc_attributes` (`npc_id`,`attribute_id`,`value`,`order`) VALUES 
 (101,567,'womprat',1),		-- Type
 (101,73,'None',2),			-- Armor Rating
 (101,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (101,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (101,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (101,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (101,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (101,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (101,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (101,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (101,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (101,221,'1000',12),		-- Health
 (101,225,'1000',13),		-- Strength
 (101,218,'1000',14),		-- Constitution
 (101,216,'1025',15),		-- Action
 (101,223,'1025',16),		-- Quickness
 (101,224,'1025',17),		-- Stamina
 (101,222,'1050',18),		-- Mind
 (101,220,'1050',19),		-- Focus
 (101,228,'1050',20),		-- Willpower
 (101,45,'40.0',21),		-- Aggressive
 (101,771,'25',30),			-- Tamable
 (101,401,'3',31),			-- Ferocity
 (101,654,'Bristley Hide',32), -- Hide Type
 (101,656,'Carnivore Meat',33), -- Meat Type
 (101,2037,'0',34),			-- Creature: Moutable
 (101,2038,'0',35),			-- Creature: Herd
 (101,2039,'0',36),			-- Creature: Pack
 (101,2040,'0',37),			-- Creature: Bio-Engineered
 (101,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (101,2042,'0',39),			-- Creature: Cant Be Harmed
 (101,2043,'0',40),			-- Creature: Healer
 (101,2044,'356',41),		-- Creature: XP
 (101,217,'2.0',42),		-- Attack Speed
 (101,2053,'90',43),		-- Creature: Min damage
 (101,2054,'110',44),		-- Creature: Max damage
 (101,2055,'6',45),			-- Creature: Max damage range
 (101,2056,'1',46),			-- Creature: Aggressive
 (101,745,'1',47),			-- Stalker
 (101,2057,'1',48),			-- Creature: Roaming
 (101,486,'0',49),			-- Deathblows
 (101,2058,'20.0',50),		-- Creature: Warning range
 (101,2059,'15.0',51),		-- Creature: Attack range
 (101,2060,'65.0',52),		-- Creature: Aggro range
 (101,2064,'120000',53),	-- Creature: Roaming delay
 (101,2065,'0.5',54),		-- Creature: Roaming speed
 (101,2066,'32.0',55),		-- Creature: Roaming max distance
 (101,2067,'4.0',56),		-- Creature: Stalking speed
 (101,2068,'64.0',57),		-- Creature: Stalking max distance
 (101,2069,'0',58),			-- Creature: Group assist
 
 (102,567,'desert_womprat',1), -- Type
 (102,73,'None',2),			-- Armor Rating
 (102,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (102,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (102,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (102,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (102,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (102,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (102,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (102,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (102,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (102,221,'1000',12),		-- Health
 (102,225,'1000',13),		-- Strength
 (102,218,'1000',14),		-- Constitution
 (102,216,'1025',15),		-- Action
 (102,223,'1025',16),		-- Quickness
 (102,224,'1025',17),		-- Stamina
 (102,222,'1050',18),		-- Mind
 (102,220,'1050',19),		-- Focus
 (102,228,'1050',20),		-- Willpower
 (102,45,'40.0',21),		-- Aggressive
 (102,771,'25',30),			-- Tamable
 (102,401,'3',31),			-- Ferocity
 (102,654,'Bristley Hide',32), -- Hide Type
 (102,656,'Carnivore Meat',33), -- Meat Type
 (102,2037,'0',34),			-- Creature: Moutable
 (102,2038,'0',35),			-- Creature: Herd
 (102,2039,'0',36),			-- Creature: Pack
 (102,2040,'0',37),			-- Creature: Bio-Engineered
 (102,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (102,2042,'0',39),			-- Creature: Cant Be Harmed
 (102,2043,'0',40),			-- Creature: Healer
 (102,2044,'356',41),		-- Creature: XP
 (102,217,'2.0',42),		-- Attack Speed
 (102,2053,'90',43),		-- Creature: Min damage
 (102,2054,'110',44),		-- Creature: Max damage
 (102,2055,'6',45),			-- Creature: Max damage range 
 (102,2056,'1',46),			-- Creature: Aggressive
 (102,745,'1',47),			-- Stalker
 (102,2057,'1',48),			-- Creature: Roaming
 (102,486,'0',49),			-- Deathblows 
 (102,2058,'20.0',50),		-- Creature: Warning range
 (102,2059,'15.0',51),		-- Creature: Attack range
 (102,2060,'65.0',52),		-- Creature: Aggro range
 (102,2064,'120000',53),	-- Creature: Roaming delay
 (102,2065,'0.5',54),		-- Creature: Roaming speed
 (102,2066,'32.0',55),		-- Creature: Roaming max distance
 (102,2067,'4.0',56),		-- Creature: Stalking speed
 (102,2068,'64.0',57),		-- Creature: Stalking max distance
 (102,2069,'0',58),			-- Creature: Group assist

 (103,567,'lesser_desert_womprat',1), -- Type
 (103,73,'None',2),			-- Armor Rating
 (103,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (103,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (103,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (103,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (103,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (103,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (103,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (103,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (103,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (103,221,'1000',12),		-- Health
 (103,225,'1000',13),		-- Strength
 (103,218,'1000',14),		-- Constitution
 (103,216,'1025',15),		-- Action
 (103,223,'1025',16),		-- Quickness
 (103,224,'1025',17),		-- Stamina
 (103,222,'1050',18),		-- Mind
 (103,220,'1050',19),		-- Focus
 (103,228,'1050',20),		-- Willpower
 (103,45,'40.0',21),		-- Aggressive
 (103,771,'25',30),			-- Tamable
 (103,401,'3',31),			-- Ferocity
 (103,654,'Bristley Hide',32), -- Hide Type
 (103,656,'Carnivore Meat',33), -- Meat Type
 (103,2037,'0',34),			-- Creature: Moutable
 (103,2038,'0',35),			-- Creature: Herd
 (103,2039,'0',36),			-- Creature: Pack
 (103,2040,'0',37),			-- Creature: Bio-Engineered
 (103,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (103,2042,'0',39),			-- Creature: Cant Be Harmed
 (103,2043,'0',40),			-- Creature: Healer
 (103,2044,'356',41),		-- Creature: XP
 (103,217,'2.0',42),		-- Attack Speed
 (103,2053,'90',43),		-- Creature: Min damage
 (103,2054,'110',44),		-- Creature: Max damage
 (103,2055,'6',45),			-- Creature: Max damage range  
 (103,2056,'1',46),			-- Creature: Aggressive
 (103,745,'1',47),			-- Stalker
 (103,2057,'1',48),			-- Creature: Roaming
 (103,486,'0',49),			-- Deathblows 
 (103,2058,'20.0',50),		-- Creature: Warning range
 (103,2059,'15.0',51),		-- Creature: Attack range
 (103,2060,'65.0',52),		-- Creature: Aggro range
 (103,2064,'120000',53),	-- Creature: Roaming delay
 (103,2065,'0.5',54),		-- Creature: Roaming speed
 (103,2066,'32.0',55),		-- Creature: Roaming max distance
 (103,2067,'4.0',56),		-- Creature: Stalking speed
 (103,2068,'64.0',57),		-- Creature: Stalking max distance
 (103,2069,'0',58),			-- Creature: Group assist
 
 (104,567,'variegated_womprat',1),  -- Type
 (104,73,'None',2),			-- Armor Rating
 (104,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (104,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (104,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (104,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (104,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (104,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (104,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (104,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (104,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (104,221,'1000',12),		-- Health
 (104,225,'1000',13),		-- Strength
 (104,218,'1000',14),		-- Constitution
 (104,216,'1025',15),		-- Action
 (104,223,'1025',16),		-- Quickness
 (104,224,'1025',17),		-- Stamina
 (104,222,'1050',18),		-- Mind
 (104,220,'1050',19),		-- Focus
 (104,228,'1050',20),		-- Willpower
 (104,45,'40.0',21),		-- Aggressive
 (104,771,'25',30),			-- Tamable
 (104,401,'3',31),			-- Ferocity
 (104,654,'Bristley Hide',32), -- Hide Type
 (104,656,'Carnivore Meat',33), -- Meat Type
 (104,2037,'0',34),			-- Creature: Moutable
 (104,2038,'0',35),			-- Creature: Herd
 (104,2039,'0',36),			-- Creature: Pack
 (104,2040,'0',37),			-- Creature: Bio-Engineered
 (104,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (104,2042,'0',39),			-- Creature: Cant Be Harmed
 (104,2043,'0',40),			-- Creature: Healer
 (104,2044,'356',41),		-- Creature: XP
 (104,217,'2.0',42),		-- Attack Speed
 (104,2053,'90',43),		-- Creature: Min damage
 (104,2054,'110',44),		-- Creature: Max damage
 (104,2055,'6',45),			-- Creature: Max damage range 
 (104,2056,'1',46),			-- Creature: Aggressive
 (104,745,'1',47),			-- Stalker
 (104,2057,'1',48),			-- Creature: Roaming
 (104,486,'0',49),			-- Deathblows 
 (104,2058,'20.0',50),		-- Creature: Warning range
 (104,2059,'15.0',51),		-- Creature: Attack range
 (104,2060,'65.0',52),		-- Creature: Aggro range
 (104,2064,'120000',53),	-- Creature: Roaming delay
 (104,2065,'0.5',54),		-- Creature: Roaming speed
 (104,2066,'32.0',55),		-- Creature: Roaming max distance
 (104,2067,'4.0',56),		-- Creature: Stalking speed
 (104,2068,'64.0',57),		-- Creature: Stalking max distance
 (104,2069,'0',58),			-- Creature: Group assist

 -- Womp Rat Hue
 (105,567,'womprat',1),		-- Type
 (105,73,'None',2),			-- Armor Rating
 (105,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (105,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (105,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (105,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (105,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (105,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (105,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (105,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (105,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (105,221,'1500',12),		-- Health
 (105,225,'1500',13),		-- Strength
 (105,218,'1500',14),		-- Constitution
 (105,216,'1525',15),		-- Action
 (105,223,'1525',16),		-- Quickness
 (105,224,'1525',17),		-- Stamina
 (105,222,'1550',18),		-- Mind
 (105,220,'1550',19),		-- Focus
 (105,228,'1550',20),		-- Willpower
 (105,45,'60.0',21),		-- Aggressive
 (105,771,'25',30),			-- Tamable
 (105,401,'3',31),			-- Ferocity
 (105,654,'Bristley Hide',32), -- Hide Type
 (105,656,'Carnivore Meat',33), -- Meat Type
 (105,2037,'0',34),			-- Creature: Moutable
 (105,2038,'0',35),			-- Creature: Herd
 (105,2039,'0',36),			-- Creature: Pack
 (105,2040,'0',37),			-- Creature: Bio-Engineered
 (105,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (105,2042,'0',39),			-- Creature: Cant Be Harmed
 (105,2043,'0',40),			-- Creature: Healer
 (105,2044,'356',41),		-- Creature: XP
 (105,217,'2.0',42),		-- Attack Speed
 (105,2053,'100',43),		-- Creature: Min damage
 (105,2054,'120',44),		-- Creature: Max damage
 (105,2055,'6',45),			-- Creature: Max damage range
 (105,2056,'1',46),			-- Creature: Aggressive
 (105,745,'1',47),			-- Stalker
 (105,2057,'1',48),			-- Creature: Roaming
 (105,486,'0',49),			-- Deathblows 
 (105,2058,'20.0',50),		-- Creature: Warning range
 (105,2059,'15.0',51),		-- Creature: Attack range
 (105,2060,'65.0',52),		-- Creature: Aggro range
 (105,2064,'120000',53),	-- Creature: Roaming delay
 (105,2065,'0.5',54),		-- Creature: Roaming speed
 (105,2066,'32.0',55),		-- Creature: Roaming max distance
 (105,2067,'4.0',56),		-- Creature: Stalking speed
 (105,2068,'64.0',57),		-- Creature: Stalking max distance
 (105,2069,'0',58),			-- Creature: Group assist

 (106,567,'rill',1),		 -- Type
 (106,73,'None',2),			-- Armor Rating
 (106,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (106,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (106,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (106,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (106,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (106,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (106,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (106,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (106,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (106,221,'500',12),		-- Health
 (106,225,'500',13),		-- Strength
 (106,218,'500',14),		-- Constitution
 (106,216,'525',15),		-- Action
 (106,223,'525',16),		-- Quickness
 (106,224,'525',17),		-- Stamina
 (106,222,'550',18),		-- Mind
 (106,220,'550',19),		-- Focus
 (106,228,'550',20),		-- Willpower
 (106,45,'30.0',21),		-- Aggressive
 (106,771,'25',30),			-- Tamable
 (106,401,'3',31),			-- Ferocity
 (106,654,'Bristley Hide',32), -- Hide Type
 (106,656,'Carnivore Meat',33), -- Meat Type
 (106,2037,'0',34),			-- Creature: Moutable
 (106,2038,'0',35),			-- Creature: Herd
 (106,2039,'0',36),			-- Creature: Pack
 (106,2040,'0',37),			-- Creature: Bio-Engineered
 (106,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (106,2042,'0',39),			-- Creature: Cant Be Harmed
 (106,2043,'0',40),			-- Creature: Healer
 (106,2044,'113',41),		-- Creature: XP
 (106,217,'2.0',42),		-- Attack Speed
 (106,2053,'45',43),		-- Creature: Min damage
 (106,2054,'55',44),		-- Creature: Max damage
 (106,2055,'6',45),			-- Creature: Max damage range 
 (106,2056,'1',46),			-- Creature: Aggressive
 (106,745,'1',47),			-- Stalker
 (106,2057,'1',48),			-- Creature: Roaming
 (106,486,'0',49),			-- Deathblows 
 (106,2058,'35.0',50),		-- Creature: Warning range
 (106,2059,'25.0',51),		-- Creature: Attack range
 (106,2060,'65.0',52),		-- Creature: Aggro range
 (106,2064,'120000',53),	-- Creature: Roaming delay
 (106,2065,'0.75',54),		-- Creature: Roaming speed
 (106,2066,'32.0',55),		-- Creature: Roaming max distance
 (106,2067,'4.5',56),		-- Creature: Stalking speed
 (106,2068,'75.0',57),		-- Creature: Stalking max distance
 (106,2069,'1',58);			-- Creature: Group assist


/*!40000 ALTER TABLE `non_persistent_npc_attributes` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;