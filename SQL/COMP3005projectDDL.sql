CREATE TABLE Members (
    member_id           SERIAL          PRIMARY KEY,
    member_password     VARCHAR(255)    NOT NULL,
    first_name          VARCHAR(255)    NOT NULL,
    last_name           VARCHAR(255)    NOT NULL,
    email               VARCHAR(255)    UNIQUE NOT NULL,
    phone               VARCHAR(15)     UNIQUE NOT NULL,
    current_weight      INT,
    goal_weight         INT,
    balance             INT             NOT NULL DEFAULT 0
);
CREATE TABLE Trainers (
    trainer_id          SERIAL          PRIMARY KEY,
    trainer_password    VARCHAR(255)    NOT NULL,
    first_name          VARCHAR(255)    NOT NULL,
    last_name           VARCHAR(255)    NOT NULL,
    email               VARCHAR(255)    UNIQUE NOT NULL,
    phone               VARCHAR(255)    UNIQUE NOT NULL,
    work_start_time     TIME            NOT NULL,
    work_end_time       TIME            NOT NULL
);
CREATE TABLE Administrators (
    admin_id            SERIAL          PRIMARY KEY,
    admin_password      VARCHAR(255)    NOT NULL,
    first_name          VARCHAR(255)    NOT NULL,
    last_name           VARCHAR(255)    NOT NULL,
    email               VARCHAR(255)    UNIQUE NOT NULL,
    phone               VARCHAR(15)     UNIQUE NOT NULL
);
CREATE TABLE Rooms (
    room_id             SERIAL          PRIMARY KEY,
    room_name           VARCHAR(255),
    capacity            INT
);
CREATE TABLE Equipment (
    equipment_id        SERIAL          PRIMARY KEY,
    equipment_name      VARCHAR(255),
    maintenance_status  VARCHAR(255)
);
CREATE TABLE Bookings (
    booking_id          SERIAL          PRIMARY KEY,
    event_name          VARCHAR(255),
    event_date          DATE            NOT NULL,
    event_start_time    TIME            NOT NULL,
    event_end_time      TIME            NOT NULL,
    trainer_id          INT,
    room_id             INT,
    equipment_id        INT,
    cost                INT             NOT NULL DEFAULT 0,
    FOREIGN KEY (trainer_id)
        REFERENCES Trainers (trainer_id),
    FOREIGN KEY (room_id)
        REFERENCES Rooms (room_id),
    FOREIGN KEY (equipment_id)
        REFERENCES Equipment (equipment_id)
);
CREATE TABLE Registrations (
    registration_id     SERIAL          PRIMARY KEY,
    booking_id          INT,
    member_id           INT,
    FOREIGN KEY (booking_id)
        REFERENCES Bookings (booking_id),
    FOREIGN KEY (member_id)
        REFERENCES Members (member_id)
);
