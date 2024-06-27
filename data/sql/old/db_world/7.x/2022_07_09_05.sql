-- DB update 2022_07_09_04 -> 2022_07_09_05
--
-- ZG Mining Improvements
-- Remove Old Nodes
DELETE FROM `gameobject` WHERE `id` IN (180215);
SET @OGUID :=9688;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+15;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
-- 4x per run
(@OGUID+0, 180215, 309, 1977, 1977, 1, 1, -11994.1826171875, -1458.61767578125, 83.11444854736328125, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, 259200, 255, 1, 0), -- 180215 (Area: 1977 - Difficulty: 148)
(@OGUID+1, 180215, 309, 1977, 3380, 1, 1, -12398.201171875, -1934.4305419921875, 133.2330322265625, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087, 259200, 255, 1, 0), -- 180215 (Area: 3380 - Difficulty: 148)
(@OGUID+2, 180215, 309, 1977, 0, 1, 1, -11546.4208984375, -1745.0648193359375, 40.15413284301757812, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458, 259200, 255, 1, 0), -- 180215 (Area: 0 - Difficulty: 148)
(@OGUID+3, 180215, 309, 1977, 3382, 1, 1, -11647.36328125, -1476.961669921875, 50.38566970825195312, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123, 259200, 255, 1, 0), -- 180215 (Area: 3382 - Difficulty: 148)
(@OGUID+4, 180215, 309, 1977, 3378, 1, 1, -12310.1220703125, -1465.364013671875, 130.6002044677734375, 3.961898565292358447, 0, 0, -0.91705989837646484, 0.447749500513076782, 259200, 255, 1, 0), -- 180215 (Area: 3378 - Difficulty: 148)
(@OGUID+5, 180215, 309, 1977, 3447, 1, 1, -11803.48046875, -1905.7122802734375, 52.92700958251953125, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 259200, 255, 1, 0), -- 180215 (Area: 3447 - Difficulty: 148)
(@OGUID+6, 180215, 309, 1977, 0, 1, 1, -11998.046875, -1843.457275390625, 60.41311264038085937, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 259200, 255, 1, 0), -- 180215 (Area: 0 - Difficulty: 148)
(@OGUID+7, 180215, 309, 1977, 3380, 1, 1, -12406.1650390625, -1837.8758544921875, 135.840057373046875, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.80385744571685791, 259200, 255, 1, 0), -- 180215 (Area: 3380 - Difficulty: 148)
(@OGUID+8, 180215, 309, 1977, 3378, 1, 1, -12241.8525390625, -1488.2923584474375, 131.5126495361328125, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505, 259200, 255, 1, 0), -- 180215 (Area: 3378 - Difficulty: 148)
(@OGUID+9, 180215, 309, 1977, 3383, 1, 1, -11545.5927734375, -1237.4613037109375, 79.219268798828125, 2.373644113540649414, 0, 0, 0.927183151245117187, 0.37460830807685852, 259200, 255, 1, 0), -- 180215 (Area: 3383 - Difficulty: 148)
(@OGUID+10, 180215, 309, 1977, 3380, 1, 1, -12177.271484375, -1910.1519775390625, 130.806854248046875, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058, 259200, 255, 1, 0), -- 180215 (Area: 3380 - Difficulty: 148)
(@OGUID+11, 180215, 309, 1977, 3383, 1, 1, -11599, -1217.4381103515625, 80.36554718017578125, 1.727874636650085449, 0, 0, 0.760405540466308593, 0.649448514474680175, 259200, 255, 1, 0), -- 180215 (Area: 3383 - Difficulty: 148)
(@OGUID+12, 180215, 309, 1977, 0, 1, 1, -11549.494140625, -1489.06103515625, 73.21334075927734375, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592, 259200, 255, 1, 0), -- 180215 (Area: 0 - Difficulty: 148)
(@OGUID+13, 180215, 309, 1977, 3380, 1, 1, -12145.384765625, -1941.7357177734375, 134.8932342529296875, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255, 259200, 255, 1, 0), -- 180215 (Area: 3380 - Difficulty: 148)
(@OGUID+14, 180215, 309, 1977, 0, 1, 1, -12063.4775390625, -1437.3966064453125, 130.2297821044921875, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 259200, 255, 1, 0), -- 180215 (Area: 0 - Difficulty: 148)
(@OGUID+15, 180215, 309, 1977, 3447, 1, 1, -11927.7021484375, -1756.9566650390625, 50.15846633911132812, 3.141592741012573242, 0, 0, -1, 0, 259200, 255, 1, 0); -- 180215 (Area: 3447 - Difficulty: 148)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+15;
DELETE FROM `pool_template` WHERE `entry` IN (447);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(447, 4, 'ZG Hakkari Thorium Vein');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID+0, 447, 0, 'ZG Hakkari Thorium Vein 1/16'),
(@OGUID+1, 447, 0, 'ZG Hakkari Thorium Vein 2/16'),
(@OGUID+2, 447, 0, 'ZG Hakkari Thorium Vein 3/16'),
(@OGUID+3, 447, 0, 'ZG Hakkari Thorium Vein 4/16'),
(@OGUID+4, 447, 0, 'ZG Hakkari Thorium Vein 5/16'),
(@OGUID+5, 447, 0, 'ZG Hakkari Thorium Vein 6/16'),
(@OGUID+6, 447, 0, 'ZG Hakkari Thorium Vein 7/16'),
(@OGUID+7, 447, 0, 'ZG Hakkari Thorium Vein 8/16'),
(@OGUID+8, 447, 0, 'ZG Hakkari Thorium Vein 9/16'),
(@OGUID+9, 447, 0, 'ZG Hakkari Thorium Vein 10/16'),
(@OGUID+10, 447, 0, 'ZG Hakkari Thorium Vein 11/16'),
(@OGUID+11, 447, 0, 'ZG Hakkari Thorium Vein 12/16'),
(@OGUID+12, 447, 0, 'ZG Hakkari Thorium Vein 13/16'),
(@OGUID+13, 447, 0, 'ZG Hakkari Thorium Vein 14/16'),
(@OGUID+14, 447, 0, 'ZG Hakkari Thorium Vein 15/16'),
(@OGUID+15, 447, 0, 'ZG Hakkari Thorium Vein 16/16');
