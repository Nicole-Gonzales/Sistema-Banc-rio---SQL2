USE sistema_bancario;
create table clientes(
id int not null auto_increment,
nome_clientes varchar (200) not null,
email_clientes varchar (200) not null,
telefone_clientes varchar (20) not null,
primary key (id)
);
CREATE TABLE contas(
id int not null auto_increment,
cliente_id  int not null,
numero_conta varchar(200) not null,
tipo_conta varchar (200) not null,
saldo decimal (10,2) not null,
data_abertura varchar (200) not null,
primary key (id),
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
CREATE TABLE transacoes(
id int not null auto_increment,
conta_id INT NOT NULL,
tipo_transacao varchar (200) not null,
valor decimal(10,2) not null,
data_transacao date not null,
primary key(id),
FOREIGN KEY (conta_id) REFERENCES contas(id)
);
ALTER TABLE clientes
RENAME COLUMN nome_clientes TO nome;

ALTER TABLE clientes
RENAME COLUMN email_clientes TO email;

ALTER TABLE clientes
RENAME COLUMN telefone_clientes TO telefone;


INSERT INTO clientes (nome, email, telefone)
VALUES 
('Ana Beatriz Souza', 'ana.souza@email.com', '(11) 98765-1234'),
('Lucas Henrique Lima', 'lucas.lima@email.com', '(21) 97654-2345'),
('Mariana Alves', 'mariana.alves@email.com', '(31) 96543-3456'),
('Gabriel Martins', 'gabriel.martins@email.com', '(41) 95432-4567'),
('Camila Oliveira', 'camila.oliveira@email.com', '(51) 94321-5678'),
('Rafael Santos', 'rafael.santos@email.com', '(11) 93210-6789'),
('Beatriz Ferreira', 'beatriz.ferreira@email.com', '(19) 92109-7890'),
('João Pedro Costa', 'joao.costa@email.com', '(27) 91098-8901'),
('Larissa Rodrigues', 'larissa.rodrigues@email.com', '(85) 99987-9012'),
('Felipe Almeida', 'felipe.almeida@email.com', '(48) 98876-0123'),
('Juliana Ribeiro', 'juliana.ribeiro@email.com', '(11) 97765-1234'),
('Thiago Carvalho', 'thiago.carvalho@email.com', '(62) 96654-2345'),
('Isabela Gomes', 'isabela.gomes@email.com', '(71) 95543-3456'),
('Bruno Nascimento', 'bruno.nascimento@email.com', '(81) 94432-4567'),
('Amanda Barbosa', 'amanda.barbosa@email.com', '(11) 93321-5678'),
('Gustavo Rocha', 'gustavo.rocha@email.com', '(61) 92210-6789'),
('Letícia Mendes', 'leticia.mendes@email.com', '(13) 91109-7890'),
('Daniel Teixeira', 'daniel.teixeira@email.com', '(47) 90098-8901'),
('Vitória Castro', 'vitoria.castro@email.com', '(16) 98987-9012'),
('Matheus Freitas', 'matheus.freitas@email.com', '(34) 97876-0123');

ALTER TABLE contas
RENAME COLUMN cliente_id TO Nome;

ALTER TABLE contas
RENAME COLUMN numero_conta TO Numero_da_conta;

ALTER TABLE contas
RENAME COLUMN tipo_conta TO Conta;

ALTER TABLE contas
RENAME COLUMN saldo_decimal TO Saldo;

ALTER TABLE contas
RENAME COLUMN data_abertura TO Data_de_abertura;

ALTER TABLE contas
RENAME COLUMN nome TO cliente_id;

INSERT INTO contas (cliente_id, numero_da_conta,conta, saldo, data_de_abertura)
VALUES
(1, '00012345-1', 'Corrente', 2500.50, '2025-01-15'),
(2, '00023456-2', 'Poupança', 5800.75, '2025-02-10'),
(3, '00034567-3', 'Corrente', 1250.00, '2025-02-22'),
(4, '00045678-4', 'Corrente', 7340.90, '2025-03-05'),
(5, '00056789-5', 'Poupança', 3200.40, '2025-03-18'),
(6, '00067890-6', 'Corrente', 980.25, '2025-04-02'),
(7, '00078901-7', 'Poupança', 4500.00, '2025-04-20'),
(8, '00089012-8', 'Corrente', 1675.80, '2025-05-11'),
(9, '00090123-9', 'Corrente', 8200.35, '2025-05-27'),
(10, '00101234-0', 'Poupança', 2950.60, '2025-06-08'),
(11, '00112345-1', 'Corrente', 4100.00, '2025-06-19'),
(12, '00123456-2', 'Poupança', 6750.90, '2025-07-03'),
(13, '00134567-3', 'Corrente', 1890.45, '2025-07-15'),
(14, '00145678-4', 'Corrente', 5320.70, '2025-07-28'),
(15, '00156789-5', 'Poupança', 2780.30, '2025-08-06'),
(16, '00167890-6', 'Corrente', 9100.00, '2025-08-18'),
(17, '00178901-7', 'Poupança', 3650.55, '2025-09-02'),
(18, '00189012-8', 'Corrente', 1425.90, '2025-09-14'),
(19, '00190123-9', 'Corrente', 6890.25, '2025-10-01'),
(20, '00201234-0', 'Poupança', 5100.80, '2025-10-16');

ALTER TABLE transacoes
RENAME COLUMN tipo_transacao TO Tipo_de_transacao;

ALTER TABLE transacoes
RENAME COLUMN data_transacao TO Data_da_transacao;


INSERT INTO transacoes (conta_id, tipo_de_transacao,valor,data_da_transacao)
Values
(1, 'Deposito', 1000.00, '2025-01-20'),
(1, 'Pagamento', 250.50, '2025-01-25'),
(1, 'Saque', 300.00, '2025-02-02'),

(2, 'Deposito', 2000.00, '2025-02-15'),
(2, 'Transferencia', 500.00, '2025-02-20'),
(2, 'Pagamento', 150.75, '2025-03-01'),

(3, 'Deposito', 800.00, '2025-02-25'),
(3, 'Saque', 200.00, '2025-03-03'),
(3, 'Pagamento', 75.50, '2025-03-10'),

(4, 'Deposito', 3000.00, '2025-03-10'),
(4, 'Transferencia', 750.00, '2025-03-20'),
(4, 'Pagamento', 320.90, '2025-04-01'),

(5, 'Deposito', 1500.00, '2025-03-25'),
(5, 'Pagamento', 180.40, '2025-04-02'),
(5, 'Saque', 300.00, '2025-04-10'),

(6, 'Deposito', 500.00, '2025-04-05'),
(6, 'Pagamento', 120.25, '2025-04-12'),
(6, 'Transferencia', 200.00, '2025-04-18'),

(7, 'Deposito', 2500.00, '2025-04-25'),
(7, 'Saque', 400.00, '2025-05-02'),
(7, 'Pagamento', 275.00, '2025-05-10'),

(8, 'Deposito', 1000.00, '2025-05-15'),
(8, 'Transferencia', 350.00, '2025-05-20'),
(8, 'Pagamento', 100.80, '2025-05-28'),

(9, 'Deposito', 4000.00, '2025-06-01'),
(9, 'Pagamento', 550.35, '2025-06-08'),
(9, 'Saque', 700.00, '2025-06-15'),

(10, 'Deposito', 1200.00, '2025-06-12'),
(10, 'Transferencia', 300.00, '2025-06-20'),
(10, 'Pagamento', 250.60, '2025-06-28'),

(11, 'Deposito', 1800.00, '2025-07-01'),
(11, 'Saque', 250.00, '2025-07-10'),
(11, 'Pagamento', 175.00, '2025-07-18'),

(12, 'Deposito', 3000.00, '2025-07-05'),
(12, 'Transferencia', 800.00, '2025-07-15'),
(12, 'Pagamento', 420.90, '2025-07-25'),

(13, 'Deposito', 900.00, '2025-07-20'),
(13, 'Pagamento', 125.45, '2025-07-28'),
(13, 'Saque', 200.00, '2025-08-05'),

(14, 'Deposito', 2200.00, '2025-08-01'),
(14, 'Transferencia', 600.00, '2025-08-10'),
(14, 'Pagamento', 350.70, '2025-08-18'),

(15, 'Deposito', 1300.00, '2025-08-10'),
(15, 'Saque', 250.00, '2025-08-20'),
(15, 'Pagamento', 190.30, '2025-08-28'),

(16, 'Deposito', 5000.00, '2025-08-22'),
(16, 'Transferencia', 1200.00, '2025-09-01'),
(16, 'Pagamento', 480.00, '2025-09-10'),

(17, 'Deposito', 1700.00, '2025-09-05'),
(17, 'Pagamento', 220.55, '2025-09-12'),
(17, 'Saque', 300.00, '2025-09-20'),

(18, 'Deposito', 700.00, '2025-09-18'),
(18, 'Transferencia', 150.00, '2025-09-25'),
(18, 'Pagamento', 95.90, '2025-10-02'),

(19, 'Deposito', 3500.00, '2025-10-05'),
(19, 'Saque', 500.00, '2025-10-12'),
(19, 'Pagamento', 375.25, '2025-10-20'),

(20, 'Deposito', 2500.00, '2025-10-20'),
(20, 'Transferencia', 700.00, '2025-10-25'),
(20, 'Pagamento', 290.80, '2025-11-01');


