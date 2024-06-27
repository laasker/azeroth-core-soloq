-- DB update 2021_03_21_00 -> 2021_03_23_00
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_auth' AND COLUMN_NAME = '2021_03_21_00';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_auth CHANGE COLUMN 2021_03_21_00 2021_03_23_00 bit;
SELECT sql_rev INTO OK FROM version_db_auth WHERE sql_rev = '1609867708436603000'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_auth` (`sql_rev`) VALUES ('1609867708436603000');
ALTER TABLE `account_muted`
CHARSET = 'utf8',
MODIFY `mutedby` varchar(50) NOT NULL,
MODIFY `mutereason` varchar(255) NOT NULL;
ALTER TABLE `logs`
CHARSET = 'utf8mb4',
MODIFY `string` text;

--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
