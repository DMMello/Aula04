/*Alter table tb_pedidos
add constraint fk_pedidos
foreign key (cliente_codigo) references tb_clientes(codigo_cliente);

alter table tb_itens
add constraint fk_itens
foreign key (item_codigo) references tb_produtos(codigo_produto);

alter table tb_itens
add constraint fk_pedidos2
foreign key (pedido_codigo) references tb_pedidos(codigo_pedido); */

/*select * from tb_pedidos
alter table tb_pedidos
modify column codigo_pedido int not null auto_increment,
add primary key (codigo_pedido); */

/*select * from tb_itens 
alter table tb_itens
modify column codigo_item_pedido int not null auto_increment,
add primary key (codigo_item_pedido);*/

/* select * from tb_pedidos where valor > 50.00; */

select * from tb_pedidos
inner join tb_clientes 
ON cliente_codigo = codigo_cliente 
where codigo_Pedido > 2
order by codigo_pedido
order by codigo_pedido