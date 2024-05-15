CREATE TABLE Livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    ano_publicacao INT,
    disponivel BOOLEAN,
    categoria VARCHAR(100),
    isbn VARCHAR(20),
    editora VARCHAR(100),
    quantidade_paginas INT,
    idioma VARCHAR(50)
);

# 1
insert into livros (titulo, autor, ano_publicação, disponibilidade, categoria, ISBN, editora, paginas, idiomas)
values (`as cronicas de narnia`, `C.S lewis`, 1950, true, `fantasia`, `93-12456465`,  `hapercollins`, 288, `frances`);

#2
update livros set disponibilidade = false where ano_publicação < 1900;

#3
update livros set editora = `plume books`
where titulo = `1984`;

#4
delete from livros where idioma =
`frances` and ano_publicação < 2000;

#5
select * from livros where paginas > 650;

#6
select categoria, count(*) as total_livros
from livros group by categoria;

#7
select * from livros order by id desc limit 5;

#8
select avg (paginas) as media_paginas
from livros where disponibilidade = true; 

#9
select*from livros order by ano_publicação desc; 

#10
select*from livros where titulo like `S%` and ano_publicação 
between 1970 and 1990;