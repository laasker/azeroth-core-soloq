-- DB update 2023_01_31_04 -> 2023_01_31_05
--
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 2849);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(2849, 0, 0, 'The auction house', 0, 1, 1, 2827, 318, 0, 0, '', 0, 0),
(2849, 1, 0, 'The bank', 4888, 1, 1, 2822, 319, 0, 0, '', 0, 0),
(2849, 2, 0, 'Barber', 45376, 1, 1, 10020, 320, 0, 0, '', 0, 0),
(2849, 3, 0, 'The bat handler', 6790, 1, 1, 2823, 321, 0, 0, '', 0, 0),
(2849, 4, 0, 'The battlemaster', 0, 1, 1, 8225, 322, 0, 0, '', 0, 0),
(2849, 5, 0, 'The guild master', 0, 1, 1, 2824, 323, 0, 0, '', 0, 0),
(2849, 6, 0, 'The inn', 4893, 1, 1, 2825, 324, 0, 0, '', 0, 0),
(2849, 7, 0, 'Locksmith', 33141, 1, 1, 10261, 325, 0, 0, '', 0, 0),
(2849, 8, 0, 'The mailbox', 0, 1, 1, 2826, 326, 0, 0, '', 0, 0),
(2849, 9, 0, 'The stable master', 8521, 1, 1, 4906, 327, 0, 0, '', 0, 0),
(2849, 10, 0, 'The weapon master', 0, 1, 1, 3726, 328, 0, 0, '', 0, 0),
(2849, 11, 0, 'The zeppelin master', 0, 1, 1, 2828, 329, 0, 0, '', 0, 0),
(2849, 12, 0, 'A class trainer', 6792, 1, 1, 2848, 0, 0, 0, '', 0, 0),
(2849, 13, 0, 'A profession trainer', 6793, 1, 1, 2847, 0, 0, 0, '', 0, 0);

-- Trainer Action Menus
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2847, 2848);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`) VALUES
(2847, 0, 0, 'Alchemy', 52058, 1, 1, 2834, 336),
(2847, 1, 0, 'Blacksmithing', 51346, 1, 1, 2835, 337),
(2847, 2, 0, 'Cooking', 45763, 1, 1, 2836, 338),
(2847, 3, 0, 'Enchanting', 52063, 1, 1, 2837, 339),
(2847, 4, 0, 'Engineering', 51347, 1, 1, 2838, 340),
(2847, 5, 0, 'First Aid', 52066, 1, 1, 2839, 341),
(2847, 6, 0, 'Fishing', 45767, 1, 1, 2840, 342),
(2847, 7, 0, 'Herbalism', 45768, 1, 1, 2841, 343),
(2847, 8, 0, 'Inscription', 48811, 1, 1, 10019, 344),
(2847, 9, 0, 'Leatherworking', 52071, 1, 1, 2842, 345),
(2847, 10, 0, 'Mining', 51348, 1, 1, 2843, 347),
(2847, 11, 0, 'Skinning', 52076, 1, 1, 2844, 346),
(2847, 12, 0, 'Tailoring', 52077, 1, 1, 2845, 348),
(2848, 0, 0, 'Mage', 45404, 1, 1, 2821, 331),
(2848, 1, 0, 'Paladin', 48028, 1, 1, 8165, 330),
(2848, 2, 0, 'Priest', 45405, 1, 1, 2829, 332),
(2848, 3, 0, 'Rogue', 45406, 1, 1, 2830, 333),
(2848, 4, 0, 'Warlock', 45407, 1, 1, 2832, 334),
(2848, 5, 0, 'Warrior', 45408, 1, 1, 2833, 335);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` IN (2847, 2848, 2849);
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(2847, 0, 'deDE', 'Alchemie', NULL),
(2847, 0, 'esES', 'Alquimia', NULL),
(2847, 0, 'esMX', 'Alquimia', NULL),
(2847, 0, 'frFR', 'Alchimie', NULL),
(2847, 0, 'koKR', '연금술', NULL),
(2847, 0, 'ruRU', 'Алхимия', NULL),
(2847, 0, 'zhCN', '炼金', NULL),
(2847, 0, 'zhTW', '鍊金術', NULL),
(2847, 1, 'deDE', 'Schmiedekunst', NULL),
(2847, 1, 'esES', 'Herrería', NULL),
(2847, 1, 'esMX', 'Herrería', NULL),
(2847, 1, 'frFR', 'Forge', NULL),
(2847, 1, 'koKR', '대장기술', NULL),
(2847, 1, 'ruRU', 'Кузнечное дело', NULL),
(2847, 1, 'zhCN', '煅造', NULL),
(2847, 1, 'zhTW', '鍛造', NULL),
(2847, 2, 'deDE', 'Kochkunst', NULL),
(2847, 2, 'esES', 'Cocina', NULL),
(2847, 2, 'esMX', 'Cocina', NULL),
(2847, 2, 'frFR', 'Cuisine', NULL),
(2847, 2, 'koKR', '요리', NULL),
(2847, 2, 'ruRU', 'Кулинария', NULL),
(2847, 2, 'zhCN', '烹饪', NULL),
(2847, 2, 'zhTW', '烹飪', NULL),
(2847, 3, 'deDE', 'Verzauberkunst', NULL),
(2847, 3, 'esES', 'Encantamiento', NULL),
(2847, 3, 'esMX', 'Encantamiento', NULL),
(2847, 3, 'frFR', 'Enchantement', NULL),
(2847, 3, 'koKR', '마법부여', NULL),
(2847, 3, 'ruRU', 'Наложение чар', NULL),
(2847, 3, 'zhCN', '附魔', NULL),
(2847, 3, 'zhTW', '附魔', NULL),
(2847, 4, 'deDE', 'Ingenieurskunst', NULL),
(2847, 4, 'esES', 'Ingeniería', NULL),
(2847, 4, 'esMX', 'Ingeniería', NULL),
(2847, 4, 'frFR', 'Ingénierie', NULL),
(2847, 4, 'koKR', '기계공학', NULL),
(2847, 4, 'ruRU', 'Инженерное дело', NULL),
(2847, 4, 'zhCN', '工程学', NULL),
(2847, 4, 'zhTW', '工程學', NULL),
(2847, 5, 'deDE', 'Erste Hilfe', NULL),
(2847, 5, 'esES', 'Primeros auxilios', NULL),
(2847, 5, 'esMX', 'Primeros auxilios', NULL),
(2847, 5, 'frFR', 'Secourisme', NULL),
(2847, 5, 'koKR', '응급치료', NULL),
(2847, 5, 'ruRU', 'Первая помощь', NULL),
(2847, 5, 'zhCN', '急救', NULL),
(2847, 5, 'zhTW', '急救', NULL),
(2847, 6, 'deDE', 'Angeln', NULL),
(2847, 6, 'esES', 'Pesca', NULL),
(2847, 6, 'esMX', 'Pesca', NULL),
(2847, 6, 'frFR', 'Pêche', NULL),
(2847, 6, 'koKR', '낚시', NULL),
(2847, 6, 'ruRU', 'Рыбная ловля', NULL),
(2847, 6, 'zhCN', '钓鱼', NULL),
(2847, 6, 'zhTW', '釣魚', NULL),
(2847, 7, 'deDE', 'KrÃ¤uterkunde', NULL),
(2847, 7, 'esES', 'Herboristería', NULL),
(2847, 7, 'esMX', 'Herboristería', NULL),
(2847, 7, 'frFR', 'Herboristerie', NULL),
(2847, 7, 'koKR', '약초채집', NULL),
(2847, 7, 'ruRU', 'Травничество', NULL),
(2847, 7, 'zhCN', '草药学', NULL),
(2847, 7, 'zhTW', '草藥學', NULL),
(2847, 8, 'deDE', 'Inschriftenkunde', NULL),
(2847, 8, 'esES', 'Inscripción', NULL),
(2847, 8, 'esMX', 'Inscripción', NULL),
(2847, 8, 'frFR', 'Calligraphie', NULL),
(2847, 8, 'koKR', '주문각인', NULL),
(2847, 8, 'ruRU', 'Начертание', NULL),
(2847, 8, 'zhCN', '铭文', NULL),
(2847, 8, 'zhTW', '銘文學', NULL),
(2847, 9, 'deDE', 'Lederverarbeitung', NULL),
(2847, 9, 'esES', 'Peletería', NULL),
(2847, 9, 'esMX', 'Peletería', NULL),
(2847, 9, 'frFR', 'Travail du cuir', NULL),
(2847, 9, 'koKR', '가죽세공', NULL),
(2847, 9, 'ruRU', 'Кожевничество', NULL),
(2847, 9, 'zhCN', '制皮', NULL),
(2847, 9, 'zhTW', '製皮', NULL),
(2847, 10, 'deDE', 'Bergbau', NULL),
(2847, 10, 'esES', 'Minería', NULL),
(2847, 10, 'esMX', 'Minería', NULL),
(2847, 10, 'frFR', 'Minage', NULL),
(2847, 10, 'koKR', '채광', NULL),
(2847, 10, 'ruRU', 'Горное дело', NULL),
(2847, 10, 'zhCN', '采矿', NULL),
(2847, 10, 'zhTW', '採礦', NULL),
(2847, 11, 'deDE', 'KÃ¼rschnerei', NULL),
(2847, 11, 'esES', 'Desuello', NULL),
(2847, 11, 'esMX', 'Desuello', NULL),
(2847, 11, 'frFR', 'Dépeçage', NULL),
(2847, 11, 'koKR', '무두질', NULL),
(2847, 11, 'ruRU', 'Снятие шкур', NULL),
(2847, 11, 'zhCN', '剥皮', NULL),
(2847, 11, 'zhTW', '剝皮', NULL),
(2847, 12, 'deDE', 'Schneiderei', NULL),
(2847, 12, 'esES', 'Sastrería', NULL),
(2847, 12, 'esMX', 'Sastrería', NULL),
(2847, 12, 'frFR', 'Adaptation', NULL),
(2847, 12, 'koKR', '재봉술', NULL),
(2847, 12, 'ruRU', 'Портняжное дело', NULL),
(2847, 12, 'zhCN', '裁缝', NULL),
(2847, 12, 'zhTW', '裁縫', NULL),
(2848, 0, 'deDE', 'Magier', NULL),
(2848, 0, 'esES', 'Mago', NULL),
(2848, 0, 'esMX', 'Mago', NULL),
(2848, 0, 'frFR', 'Magicien', NULL),
(2848, 0, 'koKR', '마법사', NULL),
(2848, 0, 'ruRU', 'Маг', NULL),
(2848, 0, 'zhCN', '法师', NULL),
(2848, 0, 'zhTW', '法師', NULL),
(2848, 1, 'deDE', 'Paladin', NULL),
(2848, 1, 'esES', 'Paladín', NULL),
(2848, 1, 'esMX', 'Paladín', NULL),
(2848, 1, 'frFR', 'Paladin', NULL),
(2848, 1, 'koKR', '성기사', NULL),
(2848, 1, 'ruRU', 'Паладин', NULL),
(2848, 1, 'zhCN', '圣骑士', NULL),
(2848, 1, 'zhTW', '聖騎士', NULL),
(2848, 2, 'deDE', 'Priester', NULL),
(2848, 2, 'esES', 'Sacerdote', NULL),
(2848, 2, 'esMX', 'Sacerdote', NULL),
(2848, 2, 'frFR', 'Prêtre', NULL),
(2848, 2, 'koKR', '사제', NULL),
(2848, 2, 'ruRU', 'Жрец', NULL),
(2848, 2, 'zhCN', '牧师', NULL),
(2848, 2, 'zhTW', '牧師', NULL),
(2848, 3, 'deDE', 'Schurke', NULL),
(2848, 3, 'esES', 'Pícaro', NULL),
(2848, 3, 'esMX', 'Pícaro', NULL),
(2848, 3, 'frFR', 'Voleur', NULL),
(2848, 3, 'koKR', '도적', NULL),
(2848, 3, 'ruRU', 'Разбойник', NULL),
(2848, 3, 'zhCN', '盗贼', NULL),
(2848, 3, 'zhTW', '盜賊', NULL),
(2848, 4, 'deDE', 'Hexenmeister', NULL),
(2848, 4, 'esES', 'Brujo', NULL),
(2848, 4, 'esMX', 'Brujo', NULL),
(2848, 4, 'frFR', 'Démoniste', NULL),
(2848, 4, 'koKR', '흑마법사', NULL),
(2848, 4, 'ruRU', 'Чернокнижник', NULL),
(2848, 4, 'zhCN', '术士', NULL),
(2848, 4, 'zhTW', '術士', NULL),
(2848, 5, 'deDE', 'Krieger', NULL),
(2848, 5, 'esES', 'Guerrero', NULL),
(2848, 5, 'esMX', 'Guerrero', NULL),
(2848, 5, 'frFR', 'Guerrier', NULL),
(2848, 5, 'koKR', '전사', NULL),
(2848, 5, 'ruRU', 'Воин', NULL),
(2848, 5, 'zhCN', '战士', NULL),
(2848, 5, 'zhTW', '戰士', NULL),
(2849, 0, 'deDE', 'Das Auktionshaus', NULL),
(2849, 0, 'frFR', 'Hôtel des ventes', NULL),
(2849, 0, 'zhCN', '拍卖行', NULL),
(2849, 1, 'deDE', 'Die Bank', NULL),
(2849, 1, 'esES', 'El banco', NULL),
(2849, 1, 'esMX', 'El banco', NULL),
(2849, 1, 'frFR', 'La banque', NULL),
(2849, 1, 'koKR', '은행', NULL),
(2849, 1, 'ruRU', 'Банк', NULL),
(2849, 1, 'zhCN', '银行', NULL),
(2849, 1, 'zhTW', '銀行', NULL),
(2849, 2, 'deDE', 'Barbier', NULL),
(2849, 2, 'esES', 'Peluquero', NULL),
(2849, 2, 'esMX', 'Peluquero', NULL),
(2849, 2, 'frFR', 'Barbier', NULL),
(2849, 2, 'koKR', '미용실', NULL),
(2849, 2, 'ruRU', 'Парикмахер', NULL),
(2849, 2, 'zhCN', '理发店', NULL),
(2849, 2, 'zhTW', '美容師', NULL),
(2849, 3, 'deDE', 'Der FledermausfÃ¼hrer', NULL),
(2849, 3, 'esES', 'El cuidador de murciélagos', NULL),
(2849, 3, 'esMX', 'El cuidador de murciélagos', NULL),
(2849, 3, 'frFR', 'Le maître des chauves-souris', NULL),
(2849, 3, 'koKR', '박쥐 조련사', NULL),
(2849, 3, 'ruRU', 'Дрессировщик нетопырей', NULL),
(2849, 3, 'zhCN', '蝙蝠管理员', NULL),
(2849, 3, 'zhTW', '蝙蝠管理員', NULL),
(2849, 4, 'deDE', 'Der Kampfmeister', NULL),
(2849, 4, 'frFR', 'Le maître de guerre', NULL),
(2849, 4, 'zhCN', '战场管理员', NULL),
(2849, 5, 'deDE', 'Der Gildenmeister', NULL),
(2849, 5, 'frFR', 'Le maître de la Guilde', NULL),
(2849, 5, 'zhCN', '公会管理员', NULL),
(2849, 6, 'deDE', 'Ein Gasthaus', NULL),
(2849, 6, 'esES', 'La posada', NULL),
(2849, 6, 'esMX', 'La posada', NULL),
(2849, 6, 'frFR', 'L\'Auberge', NULL),
(2849, 6, 'koKR', '여관', NULL),
(2849, 6, 'ruRU', 'Таверна', NULL),
(2849, 6, 'zhCN', '旅店', NULL),
(2849, 6, 'zhTW', '旅店', NULL),
(2849, 7, 'deDE', 'Schlosser', NULL),
(2849, 7, 'esES', 'Cerrajero', NULL),
(2849, 7, 'esMX', 'Cerrajero', NULL),
(2849, 7, 'frFR', 'Serrurier', NULL),
(2849, 7, 'koKR', '자물쇠 상인', NULL),
(2849, 7, 'ruRU', 'Замочник', NULL),
(2849, 7, 'zhCN', '锁匠', NULL),
(2849, 7, 'zhTW', '鎖匠', NULL),
(2849, 8, 'deDE', 'Ein Briefkasten', NULL),
(2849, 8, 'frFR', 'La boîte aux lettres', NULL),
(2849, 8, 'zhCN', '邮箱', NULL),
(2849, 9, 'deDE', 'Der Stallmeister', NULL),
(2849, 9, 'esES', 'El maestro de establos', NULL),
(2849, 9, 'esMX', 'El maestro de establos', NULL),
(2849, 9, 'frFR', 'Maître d\'écurie', NULL),
(2849, 9, 'koKR', '야수 관리인', NULL),
(2849, 9, 'ruRU', 'Смотритель стойл', NULL),
(2849, 9, 'zhCN', '兽栏管理员', NULL),
(2849, 9, 'zhTW', '獸欄管理員', NULL),
(2849, 10, 'deDE', 'Der Waffenmeister', NULL),
(2849, 10, 'frFR', 'Le maître d\'armes', NULL),
(2849, 10, 'zhCN', '武器大师', NULL),
(2849, 11, 'deDE', 'Der Zeppelinmeister', NULL),
(2849, 11, 'frFR', 'Le maître des zeppelins', NULL),
(2849, 11, 'zhCN', '飞艇管理员', NULL),
(2849, 12, 'deDE', 'Ein Lehrer fÃ¼r eine Klasse', NULL),
(2849, 12, 'esES', 'Un instructor de clase', NULL),
(2849, 12, 'esMX', 'Un instructor de clase', NULL),
(2849, 12, 'frFR', 'un Maître de classe', NULL),
(2849, 12, 'koKR', '직업 상급자', NULL),
(2849, 12, 'ruRU', 'Учитель классовых навыков', NULL),
(2849, 12, 'zhCN', '职业训练师', NULL),
(2849, 12, 'zhTW', '職業訓練師', NULL),
(2849, 13, 'deDE', 'Ein Lehrer fÃ¼r einen Beruf', NULL),
(2849, 13, 'esES', 'Un instructor de profesión', NULL),
(2849, 13, 'esMX', 'Un instructor de profesión', NULL),
(2849, 13, 'frFR', 'un Maître de profession', NULL),
(2849, 13, 'koKR', '기술 전문가', NULL),
(2849, 13, 'ruRU', 'Учитель профессии', NULL),
(2849, 13, 'zhCN', '专业训练师', NULL),
(2849, 13, 'zhTW', '專業技能訓練師', NULL);
