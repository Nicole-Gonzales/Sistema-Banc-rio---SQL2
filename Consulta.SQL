USE sistema_bancario;
SELECT *
FROM clientes;
SELECT nome, email
from clientes;

select nome,email
from clientes
order by nome;

SELECT *
FROM contas
ORDER BY saldo desc;

SELECT 
    clientes.nome,
    contas.numero_da_conta,
    contas.conta,
    contas.saldo
FROM clientes
INNER JOIN contas
ON clientes.id = contas.cliente_id;
