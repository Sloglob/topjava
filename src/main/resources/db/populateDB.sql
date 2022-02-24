DELETE FROM user_roles;
DELETE FROM users;
DELETE FROM meals;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin'),
       ('Guest', 'guest@gmail.com', 'guest');

INSERT INTO user_roles (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);


INSERT INTO meals (datetime, description, calories, user_id)
VALUES ('2022-01-30 08:00:00', 'Завтрак', '400', (SELECT user_id FROM user_roles WHERE role = 'USER')),
       ('2022-01-30 12:00:00', 'Обед', '1000', (SELECT user_id FROM user_roles WHERE role = 'USER')),
       ('2022-01-30 21:00:00', 'Ужин', '500', (SELECT user_id FROM user_roles WHERE role = 'USER')),
       ('2022-01-31 09:00:00', 'Завтрак', '500', (SELECT user_id FROM user_roles WHERE role = 'USER')),
       ('2022-01-31 13:00:00', 'Ужин', '1100', (SELECT user_id FROM user_roles WHERE role = 'USER')),
       ('2022-01-31 20:00:00', 'Обед', '450', (SELECT user_id FROM user_roles WHERE role = 'USER'));