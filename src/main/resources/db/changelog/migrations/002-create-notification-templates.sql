-- liquibase formatted sql

-- changeset Nikita:002-create-notification-templates

CREATE TABLE notification_templates (
    id              BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    event_type      varchar(100) NOT NULL UNIQUE,
    title           varchar(255) NOT NULL,
    body            TEXT NOT NULL,
    channel         varchar(50) NOT NULL,
    created_at      TIMESTAMP NOT NULL DEFAULT NOW()
);