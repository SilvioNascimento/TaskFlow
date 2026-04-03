-- 2. Tabela de Categorias
CREATE TABLE categories (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(60) NOT NULL,
    color_hex   VARCHAR(10) NOT NULL,
    user_id     UUID NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
