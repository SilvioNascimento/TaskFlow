CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. Tabela de Usuários (Adaptada para OAuth2)
CREATE TABLE users (
    id              UUID NOT NULL DEFAULT uuid_generate_v4(),
    username        VARCHAR(150) NOT NULL UNIQUE,
    email           VARCHAR(255) NOT NULL UNIQUE,
    password        VARCHAR(255),
    google_id       VARCHAR(255) UNIQUE,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(id)
);

comment on table users is 'Tabela que contém todos os usuários do sistema.'
