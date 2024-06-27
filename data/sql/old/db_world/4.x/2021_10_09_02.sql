-- DB update 2021_10_09_01 -> 2021_10_09_02
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_10_09_01';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_10_09_01 2021_10_09_02 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1633452144188703200'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1633452144188703200');

DELETE FROM `creature_loot_template` WHERE `entry` IN (3715,4096,522,315,8095,5846,5854,8910,7442,12052,10382,12052,15461) AND `Reference`=24056;

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2021_10_09_02' WHERE sql_rev = '1633452144188703200';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
