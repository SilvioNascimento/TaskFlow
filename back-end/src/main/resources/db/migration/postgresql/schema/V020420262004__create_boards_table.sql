CREATE TABLE boards (
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    user_id         UUID NOT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);