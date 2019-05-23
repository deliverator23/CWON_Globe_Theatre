/*
	Civilization
	Authors: WitchLychKing
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind				)
VALUES	('BUILDING_GLOBE_THEATRE',	'KIND_BUILDING'		);

-----------------------------------------------------------------------------------
-- Buildings
-----------------------------------------------------------------------------------

INSERT INTO Buildings
			(BuildingType,					Name,									PrereqTech,			PrereqCivic,		Cost,			MaxPlayerInstances,			MaxWorldInstances,			Capital,		PrereqDistrict,			AdjacentDistrict,			Description,										RequiresPlacement,			RequiresRiver,			OuterDefenseHitPoints,			Housing,		Entertainment,			AdjacentResource,			Coast,			EnabledByReligion,			AllowsHolyCity,			PurchaseYield,			MustPurchase,			Maintenance,			IsWonder,			TraitType,			OuterDefenseStrength,			CitizenSlots,			MustBeLake,			MustNotBeLake,			RegionalRange,			AdjacentToMountain,			ObsoleteEra,				RequiresReligion,			GrantFortification,			DefenseModifier,			InternalOnly,			RequiresAdjacentRiver,			Quote,									QuoteAudio,			MustBeAdjacentLand,			AdvisorType,				AdjacentCapital,			AdjacentImprovement,			CityAdjacentTerrain,			UnlocksGovernmentPolicy,			GovernmentTierRequirement)
VALUES		('BUILDING_GLOBE_THEATRE',		'LOC_BUILDING_GLOBE_THEATRE_NAME',		'TECH_PRINTING',	NULL,				820,			-1,							1,							0,				NULL,					NULL,						'LOC_BUILDING_GLOBE_THEATRE_DESCRIPTION',			1,							0,						NULL,							0,				1,						NULL,						NULL,			0,							0,						NULL,					0,						0,						1,					NULL,				0,								NULL,					0,					0,						0,						0,							'NO_ERA',					0,							0,							0,							0,						0,								'LOC_BUILDING_GLOBE_THEATRE_QUOTE',		NULL,				0,							'ADVISOR_GENERIC',			0,							NULL,							NULL,							0,									NULL					);
			
-----------------------------------------------------------------------------------
-- Building_YieldChanges
-----------------------------------------------------------------------------------

INSERT INTO	Building_YieldChanges
			(BuildingType,						YieldType,			YieldChange	)
VALUES		('BUILDING_GLOBE_THEATRE',			'YIELD_CULTURE',	2			);

-----------------------------------------------------------------------------------
-- Building_GreatWorks
-----------------------------------------------------------------------------------

INSERT INTO Building_GreatWorks
			(BuildingType,					GreatWorkSlotType,			NumSlots,			ThemingUniquePerson,			ThemingSameObjectType,			ThemingUniqueCivs,			ThemingSameEras,			ThemingYieldMultiplier,			NonUniquePersonYield,			NonUniquePersonTourism,			ThemingBonusDescription					)
VALUES		('BUILDING_GLOBE_THEATRE',		'GREATWORKSLOT_WRITING',	2,					1,								1,									1,							1,							100,							0,								0,								'LOC_GLOBE_THEATRE_THEMINGBONUS_WRITING'		);
			
-----------------------------------------------------------------------------------
-- Building_ValidTerrains
-----------------------------------------------------------------------------------

INSERT INTO Building_ValidTerrains
			(BuildingType,						TerrainType			)
VALUES		('BUILDING_GLOBE_THEATRE',			'TERRAIN_GRASS'		),
			('BUILDING_GLOBE_THEATRE',			'TERRAIN_PLAINS'	),
			('BUILDING_GLOBE_THEATRE',			'TERRAIN_TUNDRA'	),
			('BUILDING_GLOBE_THEATRE',			'TERRAIN_SNOW'		),
			('BUILDING_GLOBE_THEATRE',			'TERRAIN_DESERT'	);

-----------------------------------------------------------------------------------
-- Requirements
-----------------------------------------------------------------------------------

INSERT INTO Requirements
(RequirementId,									RequirementType,											Likeliness,			Impact,			Inverse,		Reverse,		Persistent,			ProgressWeight,			Triggered	)
VALUES		('REQUIRES_PLAYER_CAN_EVER_EARN_WRITER',		'REQUIREMENT_PLAYER_CAN_EVER_EARN_GREAT_PERSON_CLASS',		0,					0,				0,				0,				0,					1,						0			);

-----------------------------------------------------------------------------------
-- RequirementSets
-----------------------------------------------------------------------------------

INSERT INTO RequirementSets
(RequirementSetId,							RequirementSetType			)
VALUES		('GLOBE_THEATRE_WRITER_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------------------------------------------

INSERT INTO RequirementSetRequirements
(RequirementSetId,							RequirementId							)
VALUES		('GLOBE_THEATRE_WRITER_REQUIREMENTS',		'REQUIRES_PLAYER_CAN_EVER_EARN_WRITER'	);

-----------------------------------------------------------------------------------
-- RequirementArguments
-----------------------------------------------------------------------------------

INSERT INTO RequirementArguments
(RequirementId,									Name,					Type,					Value,							Extra,		SecondExtra		)
VALUES		('REQUIRES_PLAYER_CAN_EVER_EARN_WRITER',		'GreatPersonClass',		'ARGTYPE_IDENTITY',		'GREAT_PERSON_CLASS_WRITER',	NULL,		NULL			);


-----------------------------------------------------------------------------------
-- Modifiers
-----------------------------------------------------------------------------------

INSERT INTO Modifiers
			(ModifierId,							ModifierType,														RunOnce,			NewOnly,			Permanent,				OwnerRequirementSetId,				SubjectRequirementSetId,					OwnerStackLimit,				SubjectStackLimit	)
VALUES			('GLOBE_THEATRE_GRANT_WRITER',			'MODIFIER_SINGLE_CITY_GRANT_GREAT_PERSON_CLASS_IN_CITY',				1,					0,					1,						NULL,								'GLOBE_THEATRE_WRITER_REQUIREMENTS',			NULL,							NULL				);

-----------------------------------------------------------------------------------
-- ModifierArguments
-----------------------------------------------------------------------------------

INSERT INTO ModifierArguments
			(ModifierId,								Name,							Type,						Value,								Extra,				SecondExtra		)
VALUES	('GLOBE_THEATRE_GRANT_WRITER',				'GreatPersonClassType',			'ARGTYPE_IDENTITY',			'GREAT_PERSON_CLASS_WRITER',		NULL,				NULL			),
  ('GLOBE_THEATRE_GRANT_WRITER',				'Amount',						'ARGTYPE_IDENTITY',			1,									NULL,				NULL			);