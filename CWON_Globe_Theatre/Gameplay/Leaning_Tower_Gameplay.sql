/*
  Civilization
  Authors: Deliverator
*/

INSERT INTO Types (Type, Kind) VALUES ('BUILDING_LEANING_TOWER', 'KIND_BUILDING');

INSERT INTO Buildings (BuildingType, Name, Description, PrereqTech, Cost, AdvisorType, MaxWorldInstances, IsWonder, RequiresPlacement, Quote)
VALUES ('BUILDING_LEANING_TOWER', 'LOC_BUILDING_LEANING_TOWER_NAME', 'LOC_BUILDING_LEANING_TOWER_DESCRIPTION', 'TECH_BANKING', 999, 'ADVISOR_CULTURE', '1', 1, 1, 'LOC_BUILDING_LEANING_TOWER_QUOTE');

