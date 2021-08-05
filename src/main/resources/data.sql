insert ignore into category (id, name, slug, position) values
    (1, 'Novidades', 'novidades', 1),
    (2, 'Calçados', 'calcados', 11),
    (3, 'Acessórios e Relógios', 'acessorios', 6),
    (4, 'Beleza e Perfume', 'beleza-e-perfume', 7),
    (5, 'Casa Riachuelo', 'moda-casa', 8),
    (6, 'Eletrônicos', 'eletronicos', 9),
    (7, 'Personagens', 'rchlo-geek', 10),
    (8, 'Outlet', 'outlet', 12),
    (9, 'Feminino', 'feminino', 2),
    (10, 'Masculino', 'masculino', 3),
    (11, 'Infantil', 'infantil', 4),
    (12, 'Moda Íntima', 'moda-intima', 5);

insert ignore into product (code, name, description, slug, brand, color, price, discount, weight_in_grams, category_id) values
    (13834193, 'Jaqueta Puffer Juvenil Com Capuz Super Mario Branco', 'A Jaqueta Puffer Juvenil Com Capuz Super Mario Branco é confeccionada em material sintético. Possui estrutura ampla e modelo puffer, com capuz em pelúcia e bolsos frontais. Ideal para compor looks de inverno, mas sem perder o estilo. Combine com uma camiseta, calça jeans e tênis colorido.', 'jaqueta-puffer-juvenil-com-capuz-super-mario-branco-13834193_sku', 'Nintendo', 'WHITE', 199.90, null, 147, 11),
    (14124998, 'Camiseta Infantil Manga Curta Super Mario Azul', 'A Camiseta Infantil Manga Curta Super Mario Azul é confeccionada em malha macia e possui decote careca, mangas curtas e padronagem do Super Mario. Aposte na peça na hora de compor visuais geek divertidos.','camiseta-infantil-manga-curta-super-mario-azul-14124998_sku', 'Nintendo', 'BLUE', 39.90, 5.0, 116, 11),
    (14125129, 'Blusa de Moletom Infantil Mario Bros Vermelho', 'A Blusa de Moletom Infantil Mario Bros Vermelho é quentinha e divertida! Com mangas longas e estampa frontal e posterior do Mario Bros, a blusa é ideal para compor visuais de inverno com um toque geek!','blusa-infantil-moletom-mario-bros-vermelho-14125129_sku', 'Nintendo', 'RED', 79.90, null, 126, 11),
    (14125021, 'Camiseta Infantil Manga Curta Super Mario Branco', 'A Camiseta Infantil Manga Curta Super Mario Branco é confeccionada em malha macia de algodão e possui decote careca, mangas curtas e detalhe de estampa frontal e padronagem do Super Mario. Aposte na peça na hora de compor visuais geek divertidos.','camiseta-infantil-manga-curta-super-mario-branco-14125021_sku', 'Nintendo', 'WHITE', 49.90, 5.0, 106, 11),
    (14040174, 'Regata Infantil Mario Bros Branco', 'A Regata Infantil Mario Bros Branco é confeccionada em fibra natural, possui decote redondo e modelagem regular. As peças temáticas com os personagens preferidos da criançada são indispensáveis no guarda-roupa. Divertidas e cheias de personalidade, os modelos são uma forma dos pequenos se expressarem em relação aos seus gostos pessoais, que já começam desde cedo. Aposte!','regata-infantil-mario-bros-branco-14040174_sku', 'Nintendo', 'WHITE', 29.90, null, 98, 11);

insert ignore into product_image (id, product_code, image_url) values
    (1, 13834193, 'https://static.riachuelo.com.br/RCHLO/13834193005/portrait/3107b7473df334c6ff206cd78d16dec86d7dfe9a.jpg'),
    (2, 13834193, 'https://static.riachuelo.com.br/RCHLO/13834193005/portrait/5512bd0826754036d308842368cc112f2ff4b39f.jpg'),
    (3, 13834193, 'https://static.riachuelo.com.br/RCHLO/13834193005/portrait/23e37e68f2620dc7caf93200797a424e582d81fd.jpg'),
    (4, 13834193, 'https://static.riachuelo.com.br/RCHLO/13834193005/portrait/473fd291ae14644a757f86a76838820c1ddf7859.jpg'),
    (5, 14124998, 'https://static.riachuelo.com.br/RCHLO/14124998004/portrait/cd948d80fe8a1fdc873f8dca1f3c4c468253bf1d.jpg'),
    (6, 14124998, 'https://static.riachuelo.com.br/RCHLO/14124998004/portrait/231b1550d778c489769450a2d0778d47a0cf5d9b.jpg'),
    (7, 14125129, 'https://static.riachuelo.com.br/RCHLO/14125129003/portrait/1fca71fe5a74a74b9e7bc38f5ef0cf1dae49d167.jpg'),
    (8, 14125129, 'https://static.riachuelo.com.br/RCHLO/14125129003/portrait/47acf3ecf613822165183e47e6f97dcc01f589ef.jpg'),
    (9, 14125021, 'https://static.riachuelo.com.br/RCHLO/14125021001/portrait/a53fcda4f1ea1e04f5d67f4d4fe98248f25bcd73.jpg'),
    (10, 14125021, 'https://static.riachuelo.com.br/RCHLO/14125021001/portrait/c34b1fd5f0098ca81dfc0681d2050708f923e82c.jpg'),
    (11, 14040174, 'https://static.riachuelo.com.br/RCHLO/14040174004/portrait/f10a3e016dd974dbdc7dfaefa41a47599557a58a.jpg'),
    (12, 14040174, 'https://static.riachuelo.com.br/RCHLO/14040174004/portrait/013dc876b93c533624dc542349bccdff6fb1112c.jpg');

insert ignore into product_available_sizes (product_code, available_sizes) values
   (13834193, 'LARGE'),
   (13834193, 'EXTRA_LARGE'),
   (14124998, 'SMALL'),
   (14124998, 'MEDIUM'),
   (14125129, 'SMALL'),
   (14125129, 'MEDIUM'),
   (14125129, 'LARGE'),
   (14125021, 'SMALL'),
   (14125021, 'MEDIUM'),
   (14040174, 'SMALL'),
   (14040174, 'MEDIUM'),
   (14040174, 'LARGE');

insert ignore into payment (id, value, card_client_name, card_number, card_expiration, card_verification_code, status) values
   (1, 51.8, 'ANDERSON DA SILVA', '1111 2222 3333 4444', '2022-07', '123', 'CREATED'),
   (2, 3000.0, 'CAROLINE SOUZA', '1234 1234 1234 1234', '2023-06', '234', 'CREATED'),
   (3, 200.0, 'MARIA SILVA', '1111 1111 1111 1111', '2024-05', '456', 'CONFIRMED'),
   (4, 400.0, 'JOÃO QUEIROZ', '2222 3333 2222 4444', '2025-04', '567', 'CANCELED');
