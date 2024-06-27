-- DB update 2021_10_20_13 -> 2021_10_20_14
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_10_20_13';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_10_20_13 2021_10_20_14 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1634415260620792026'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1634415260620792026');

UPDATE `gossip_menu` SET `TextID` = 4493 WHERE `MenuID` = 3681 AND `TextID` = 4495;
UPDATE `gossip_menu` SET `TextID` = 4495 WHERE `MenuID` = 3683 AND `TextID` = 4493;


--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2021_10_20_14' WHERE sql_rev = '1634415260620792026';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
