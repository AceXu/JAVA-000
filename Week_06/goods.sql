# 商品表
create table geek_goods
(
    id          int auto_increment   primary key,
    goods_id     varchar(50)	not null comment '商品ID',
    goods_name   varchar(125)  default '' not null comment '商品名称',
    goods_image_url  varchar(200)  default '' not null comment '商品主图',
    goods_summary    text    null comment '商品简介',
    goods_price       int(10)   default 0  not null comment '商品价格，分为单位',
    status      tinyint(2)   default 1  not null comment '协议状态 1：正常 2: 异常',
    is_delete   tinyint(2)   default 0 not null comment '是否删除：0：未删除 1:删除',
    create_time int(10)                 not null comment '创建时间',
    update_time int(10)                 not null comment '修改时间'
);
create index IDX_GOODS_ID on geek_goods (goods_id);