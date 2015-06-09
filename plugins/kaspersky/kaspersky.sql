-- mssqlserver 2014
-- plugin_id: 9230


DELETE FROM plugin WHERE id = "90901"; 
DELETE FROM plugin_sid where plugin_id = "90901";
DELETE FROM software_cpe where plugin = 'kaspersky:90901';

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (90901, 1, 'kaspersky', 'kaspersky', '24', 'kaspersky');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1181, NULL, NULL, 'kaspersky - There is not enough space on the disk.', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1186, NULL, NULL, 'kaspersky - Object not found', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1192, NULL, NULL, 'kaspersky - Invalid License Format', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1193, NULL, NULL, 'kaspersky - Operation is not permited', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1195, NULL, NULL, 'kaspersky - Resource is unavailable', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1197, NULL, NULL, 'kaspersky - Operation failed because the timeout period expired', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1199, NULL, NULL, 'kaspersky - Operation canceled', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1259, NULL, NULL, 'kaspersky - Transport level error: connection terminated.', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1267, NULL, NULL, 'kaspersky - Transport level error: timeout expired.', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1272, NULL, NULL, 'kaspersky - Transport level error: connection broken.', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 1561, NULL, NULL, 'kaspersky - Host not responding', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (90901, 90901, NULL, NULL, 'kaspersky - Heartbeat from host rejected', 2, 2);

INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:kaspersky:kaspersky:kaspersky', 'kaspersky antivirus','2014','','kaspersky', 'kaspersky:90901');