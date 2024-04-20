
DELETE FROM USER_ROLE;
DELETE FROM CONTACT;
DELETE FROM PROFILE;
DELETE FROM ACTIVITY;
DELETE FROM TASK;
DELETE FROM SPRINT;
DELETE FROM PROJECT;
DELETE FROM USERS;

INSERT INTO USERS (EMAIL, PASSWORD, FIRST_NAME, LAST_NAME, DISPLAY_NAME)
VALUES ('user@gmail.com', 'password', 'userFirstName', 'userLastName', 'userDisplayName'),
       ('admin@gmail.com', 'admin', 'adminFirstName', 'adminLastName', 'adminDisplayName'),
       ('guest@gmail.com', 'guest', 'guestFirstName', 'guestLastName', 'guestDisplayName'),
       ('manager@gmail.com', 'manager', 'managerFirstName', 'managerLastName', 'managerDisplayName');


INSERT INTO USER_ROLE (USER_ID, ROLE)
VALUES (1, 0),
       (2, 0),
       (2, 1),
       (4, 2);


INSERT INTO PROFILE (ID, MAIL_NOTIFICATIONS)
VALUES (1, 49),
       (2, 14);


INSERT INTO CONTACT (ID, CODE, CONTACT_VALUE)
VALUES
    (1, 'skype', 'userSkype'),
    (1, 'mobile', '+01234567890'),
    (1, 'website', 'user.com'),
    (2, 'github', 'adminGitHub'),
    (2, 'tg', 'adminTg'),
    (2, 'vk', 'adminVk');


INSERT INTO PROJECT (CODE, TITLE, DESCRIPTION, TYPE_CODE, PARENT_ID)
VALUES ('PR1', 'PROJECT-1', 'test project 1', 'task_tracker', NULL),
       ('PR2', 'PROJECT-2', 'test project 2', 'task_tracker', 1);


INSERT INTO SPRINT (STATUS_CODE, STARTPOINT, ENDPOINT, CODE, PROJECT_ID)
VALUES ('finished', '2023-05-01 08:05:10', '2023-05-07 17:10:01', 'SP-1.001', 1),
       ('active', '2023-05-01 08:06:00', NULL, 'SP-1.002', 1),
       ('active', '2023-05-01 08:07:00', NULL, 'SP-1.003', 1),
       ('planning', '2023-05-01 08:08:00', NULL, 'SP-1.004', 1),
       ('active', '2023-05-10 08:06:00', NULL, 'SP-2.001', 2),
       ('planning', '2023-05-10 08:07:00', NULL, 'SP-2.002', 2),
       ('planning', '2023-05-10 08:08:00', NULL, 'SP-2.003', 2);


INSERT INTO TASK (TITLE, TYPE_CODE, STATUS_CODE, PROJECT_ID, SPRINT_ID, STARTPOINT)
VALUES ('Data', 'epic', 'in_progress', 1, 1, '2023-05-15 09:05:10'),
       ('Trees', 'epic', 'in_progress', 1, 1, '2023-05-15 12:05:10'),
       ('task-3', 'task', 'ready_for_test', 2, 5, '2023-06-14 09:28:10'),
       ('task-4', 'task', 'ready_for_review', 2, 5, '2023-06-14 09:28:10'),
       ('task-5', 'task', 'todo', 2, 5, '2023-06-14 09:28:10'),
       ('task-6', 'task', 'done', 2, 5, '2023-06-14 09:28:10'),
       ('task-7', 'task', 'canceled', 2, 5, '2023-06-14 09:28:10');


INSERT INTO ACTIVITY (AUTHOR_ID, TASK_ID, UPDATED, TITLE, DESCRIPTION, ESTIMATE, TYPE_CODE, STATUS_CODE, PRIORITY_CODE)
VALUES (1, 1, '2023-05-15 09:05:10', 'Data', NULL, 3, 'epic', 'in_progress', 'low'),
       (2, 1, '2023-05-15 12:25:10', 'Data', NULL, NULL, NULL, NULL, 'normal'),
       (1, 1, '2023-05-15 14:05:10', 'Data', NULL, 4, NULL, NULL, NULL),
       (1, 2, '2023-05-15 14:25:10', 'Trees', NULL, NULL, NULL, NULL, NULL),
       (2, 2, '2023-05-16 10:25:10', 'Trees', NULL, NULL, NULL, NULL, NULL),
       (1, 3, '2023-06-14 09:28:10', 'task-3', NULL, NULL, NULL, NULL, NULL),
       (1, 4, '2023-06-14 09:28:10', 'task-4', NULL, NULL, NULL, NULL, NULL),
       (1, 5, '2023-06-14 09:28:10', 'task-5', NULL, NULL, NULL, NULL, NULL),
       (1, 6, '2023-06-14 09:28:10', 'task-6', NULL, NULL, NULL, NULL, NULL),
       (1, 7, '2023-06-14 09:28:10', 'task-7', NULL, NULL, NULL, NULL, NULL);


INSERT INTO TASK_TAG (TASK_ID, TAG)
VALUES (1, 'tag1'),
       (1, 'tag2'),
       (2, 'tag3');


INSERT INTO USER_BELONG (OBJECT_ID, OBJECT_TYPE, USER_ID, USER_TYPE_CODE, STARTPOINT)
VALUES (1, 1, 1, 'project_manager', '2023-05-15 09:05:10'),
       (1, 1, 2, 'project_author', '2023-05-15 09:05:10'),
       (1, 1, 3, 'project_author', '2023-05-15 09:05:10'),
       (1, 2, 1, 'sprint_manager', '2023-05-15 09:05:10'),
       (1, 2, 2, 'sprint_author', '2023-05-15 09:05:10'),
       (1, 2, 3, 'sprint_author', '2023-05-15 09:05:10'),
       (1, 3, 1, 'task_developer', '2023-05-15 09:05:10'),
       (1, 3, 2, 'task_developer', '2023-05-15 09:05:10'),
       (1, 3, 3, 'task_developer', '2023-05-15 09:05:10'),
       (1, 3, 4, 'task_developer', '2023-05-15 09:05:10');