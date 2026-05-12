-- Liquibase formatted sql

-- changeset Nikita:001-create-users
CREATE TABLE users (
    id              BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email           varchar(255) NOT NULL UNIQUE,
    password        varchar(255) NOT NULL,
    role            varchar(50) NOT NULL DEFAULT 'USER',
    created_at      TIMESTAMP NOT NULL DEFAULT NOW()
);