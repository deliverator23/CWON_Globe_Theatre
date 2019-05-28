/*
  Civilization
  Authors: Deliverator
*/

INSERT INTO Types (Type, Kind) VALUES ('BUILDING_BURJ_KHALIFA', 'KIND_BUILDING');

INSERT INTO Buildings (BuildingType, Name, Description, PrereqTech, Cost, AdvisorType, MaxWorldInstances, IsWonder, RequiresPlacement, Quote)
VALUES ('BUILDING_BURJ_KHALIFA', 'LOC_BUILDING_BURJ_KHALIFA_NAME', 'LOC_BUILDING_BURJ_KHALIFA_DESCRIPTION', 'TECH_BANKING', 999, 'ADVISOR_CULTURE', '1', 1, 1, 'LOC_BUILDING_BURJ_KHALIFA_QUOTE');




INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('CRISTOREDENTOR_BEACHTOURISM', 'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BURJ_KHALIFA_OIL_WELL_TOURISM', 'ImprovementType', 'IMPROVEMENT_BEACH_RESORT');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BURJ_KHALIFA_OIL_WELL_TOURISM', 'ScalingFactor', '200');