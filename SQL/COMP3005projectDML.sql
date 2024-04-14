INSERT INTO
Members (member_id, member_password, first_name, last_name, email, phone, current_weight, goal_weight, balance)
VALUES
(1, '666', 'Damon', 'Gee', 'damon@whatever.com', '666-666-6666', 170, 180, 0),
(2, 'AMERICAAAAA', 'Steve', 'Rogers', 'cap@avengers.com', '987-654-3210', 95, 240, 0),
(3, 'ihatemyself', 'Bruce', 'Banner', 'hulk@avengers.com', '000-000-0000', 1400, 125, 1000);
INSERT INTO
Trainers (trainer_id, trainer_password, first_name, last_name, email, phone, work_start_time, work_end_time)
VALUES
(1, '12345', 'Rayyan', 'Sait', 'ray@idontcare.com', '123-456-7890', '8:00:00', '16:00:00');
INSERT INTO
Administrators (admin_id, admin_password, first_name, last_name, email, phone)
VALUES
(1, '1337', 'Kaitlyn', 'Warhurst', 'kaitlyn@fitnessclub.com', '101-010-1010');
INSERT INTO
Rooms (room_id, room_name, capacity)
VALUES
(1, 'Main gym', 100),
(2, 'Meditation room', 10),
(3, 'Outside track', NULL);
INSERT INTO
Equipment (equipment_id, equipment_name, maintenance_status)
VALUES
(1, 'Smith machine', NULL),
(2, 'Lat pulldown machine', NULL),
(3, 'Meditation mat', 'Ripped to shreds');

INSERT INTO
Bookings (booking_id, event_name, event_date, event_start_time, event_end_time, trainer_id, room_id, equipment_id, cost)
VALUES
(1, 'Workout 1', '2024-04-12', '10:00:00', '12:00:00', 1, 1, 1, 20),
(2, 'Workout 2', '2024-04-12', '13:00:00', '16:00:00', 1, 1, 2, 30),
(3, 'Scream and run in circles', '2024-04-12', '14:00:00', '22:00:00', NULL, 3, NULL, 0),
(4, 'Nothing', '2024-04-12', '6:00:00', '18:00:00', NULL, 2, 3, 150);

INSERT INTO
Registrations (registration_id, booking_id, member_id)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 1),
(5, 4, 3);
