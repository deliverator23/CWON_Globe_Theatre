/*
  Civilization
  Authors: Deliverator
*/

INSERT INTO Types (Type, Kind) VALUES ('BUILDING_BOROBUDUR', 'KIND_BUILDING');

INSERT INTO Buildings (BuildingType, Name, Description, PrereqTech, Cost, AdvisorType, MaxWorldInstances, IsWonder, RequiresPlacement, Quote)
VALUES ('BUILDING_BOROBUDUR', 'LOC_BUILDING_BOROBUDUR_NAME', 'LOC_BUILDING_BOROBUDUR_DESCRIPTION', 'TECH_BANKING', 999, 'ADVISOR_CULTURE', '1', 1, 1, 'LOC_BUILDING_BOROBUDUR_QUOTE');

