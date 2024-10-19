CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    senha VARCHAR(100)
);

CREATE TABLE bkpUsuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    senha VARCHAR(100)
);
