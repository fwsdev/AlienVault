-- AlienVault 2015
-- Plugin: cbis
DELETE FROM plugin WHERE id = '99202';
DELETE FROM plugin_sid where plugin_id = '99202';
DELETE FROM software_cpe where plugin = 'cbis:99202';

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (99202, 1, 'cbis', 'cbis', '24','cbis');

INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:cbis:cbis:cbis', 'cbis app','2015','','cbis', 'cbis:99202');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 38, NULL, NULL, 'cbis -  PreAuthenticated WebSphere principal: ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 45, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 52, NULL, NULL, 'cbis -  Error in DebitCardOrderNotificationHandler ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 54, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 58, NULL, NULL, 'cbis -  [MorningStar] ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 59, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 60, NULL, NULL, 'cbis -  Create subject  ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 64, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 67, NULL, NULL, 'cbis -  Unable to determine ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 72, NULL, NULL, 'cbis -  [MorningStar] -  Received ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 73, NULL, NULL, 'cbis -  [MorningStar] - Encrypted', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 74, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 75, NULL, NULL, 'cbis -  [MorningStar] - Decrypt', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 80, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 81, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 82, NULL, NULL, 'cbis -  Personal Id ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 84, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 86, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 87, NULL, NULL, 'cbis -  [MorningStar] - sid', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 88, NULL, NULL, 'cbis -  [MorningStar] -sid', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 89, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 91, NULL, NULL, 'cbis -  SecuredMethodVoter voting on ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 92, NULL, NULL, 'cbis -  [MorningStar] -  userId ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 93, NULL, NULL, 'cbis -  Create token', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 93, NULL, NULL, 'cbis -  Logging out user ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 95, NULL, NULL, 'cbis -  Unexpected error occurred ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 100, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 101, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 101, NULL, NULL, 'cbis -  Resetting the password ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 102, NULL, NULL, 'cbis -  [MorningStar] - requestTime', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 104, NULL, NULL, 'cbis -  WebSphereDelegatingFilter - doFilter', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 105, NULL, NULL, 'cbis -  [MorningStar] - responseTime ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 107, NULL, NULL, 'cbis -  User role', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 115, NULL, NULL, 'cbis -  Invalidating the session ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 115, NULL, NULL, 'cbis -  preAuthenticatedPrincipal = 01335715, ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 115, NULL, NULL, 'cbis -  Starting to scanning ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 117, NULL, NULL, 'cbis -  Caught InvocationTargetException calling ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 118, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 120, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 120, NULL, NULL, 'cbis -  Could not generate ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 120, NULL, NULL, 'cbis -  Find 1 of ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 121, NULL, NULL, 'cbis -  Unable to invalidate ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 123, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 125, NULL, NULL, 'cbis -  Resetting the password ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 128, NULL, NULL, 'cbis -  [MorningStar] -  firstName ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 129, NULL, NULL, 'cbis -  [MorningStar] -  lastName ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 130, NULL, NULL, 'cbis -  [MorningStar] -  email ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 132, NULL, NULL, 'cbis -  [MorningStar] -  sent', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 133, NULL, NULL, 'cbis -  ATSExternalAuthenticationController ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 140, NULL, NULL, 'cbis -  WebSphereDelegatingFilter ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 143, NULL, NULL, 'cbis -  SecuredMethodVoter abstaining due ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 145, NULL, NULL, 'cbis - SQL Error', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 145, NULL, NULL, 'cbis -  SQL Error', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 147, NULL, NULL, 'cbis -  Cannot insert duplicate ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 159, NULL, NULL, 'cbis -  Get clear text ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 163, NULL, NULL, 'cbis - Validating using class path resource ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 164, NULL, NULL, 'cbis - Events in the processing error cache ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 168, NULL, NULL, 'cbis - Received request', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 172, NULL, NULL, 'cbis - HHH000346: Error during managed flush ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 172, NULL, NULL, 'cbis -  Authentication success', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 175, NULL, NULL, 'cbis - HHH000352: Unable to release batch statement - PollerThreat', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 176, NULL, NULL, 'cbis - HHH000246: SQLException escaped proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 178, NULL, NULL, 'cbis - Sent response ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 180, NULL, NULL, 'cbis - HHH020003: Could not find a specific ehcache configuration', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 182, NULL, NULL, 'cbis - HHH020008: Cache - Key - Lockable', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 187, NULL, NULL, 'cbis - Passing PropertyEditor instances deprecated', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 199, NULL, NULL, 'cbis -  Service Failure', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 222, NULL, NULL, 'cbis - Job threw an unhandled Exception', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 247, NULL, NULL, 'cbis - Invocation of destroy method failed', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 257, NULL, NULL, 'cbis -  All good, password ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 260, NULL, NULL, 'cbis - Statement has failed', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 279, NULL, NULL, 'cbis -  Unexpected exception thrown ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 305, NULL, NULL, 'cbis - Unexpected error has occurred while generating a report', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 308, NULL, NULL, 'cbis - Audit the error', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 311, NULL, NULL, 'cbis - Update the error count', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 314, NULL, NULL, 'cbis - Update the Status', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 317, NULL, NULL, 'cbis - Update the audit message status ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 320, NULL, NULL, 'cbis - Move the delivery file to the error directory', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 329, NULL, NULL, 'cbis - Request - Response', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 333, NULL, NULL, 'cbis - Service Failure ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 384, NULL, NULL, 'cbis - dms ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 396, NULL, NULL, 'cbis - CRM Inbound Email Poller Startup: An error occurred attempting to connect to the email', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 426, NULL, NULL, 'cbis - Unable to process externalOrderDetails', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 500, NULL, NULL, 'cbis -  Generating the single ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 516, NULL, NULL, 'cbis -  invoking windward successful', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 520, NULL, NULL, 'cbis -  Document generated successfully ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 598, NULL, NULL, 'cbis -  Created a cw ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 619, NULL, NULL, 'cbis -  Sent request ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 675, NULL, NULL, 'cbis -  Received response', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 696, NULL, NULL, 'cbis - Failed to generate XML', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 722, NULL, NULL, 'cbis - HHH000179: Narrowing proxy Operation Breaks', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 735, NULL, NULL, 'cbis -  Setting the payload ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 871, NULL, NULL, 'cbis -  [MorningStar] - Encrypted', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 872, NULL, NULL, 'cbis -  [MorningStar] - Encrypted', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 886, NULL, NULL, 'cbis - Request - ERROR', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 892, NULL, NULL, 'cbis -  MorningStar - URL', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 929, NULL, NULL, 'cbis -  [DEPRECATION] Encountered positional ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 958, NULL, NULL, 'cbis - Got error ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 959, NULL, NULL, 'cbis - Got error ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 960, NULL, NULL, 'cbis - cannot parse exception', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 1064, NULL, NULL, 'cbis -  Document file is: ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 1108, NULL, NULL, 'cbis - No mapping found', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 1234, NULL, NULL, 'cbis -  Creating the dms ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 1487, NULL, NULL, 'cbis -  can find investor ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 2647, NULL, NULL, 'cbis -  Subfund with id ', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 100000, NULL, NULL, 'cbis - At Trace line', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 100001, NULL, NULL, 'cbis - XML Statment', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (99202, 999999, NULL, NULL, 'cbis - Generic Event', 2, 2);