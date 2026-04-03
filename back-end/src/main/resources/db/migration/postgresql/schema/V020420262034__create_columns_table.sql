CREATE TABLE columns (
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(50) NOT NULL,       -- A fazer, Em progresso, Em Revisão, Concluído
    position        INT NOT NULL,
    is_visible      BOOLEAN DEFAULT TRUE,
    board_id        SERIAL NOT NULL,

    FOREIGN KEY (board_id) REFERENCES boards(id) ON DELETE CASCADE
);