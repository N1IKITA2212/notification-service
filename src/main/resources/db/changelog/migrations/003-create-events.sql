-- Liquibase formatted sql

-- changeset Nikita:003-create-events

CREATE TABLE events(
    id              BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type            VARCHAR(100) NOT NULL,
    payload         JSONB NOT NULL,
    status          varchar(50) NOT NULL DEFAULT 'RECEIVED',
    received_at     TIMESTAMP NOT NULL DEFAULT NOW()
);