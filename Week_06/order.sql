# 订单表
create table geek_order
(
    id          int auto_increment   primary key,
    order_no    varchar(50)	not null comment '订单ID',
    user_id     int     default 0     null comment '用户ID',
    order_price  int(10)          default 0            null comment '订单金额',
    remark     varchar(255)   default ''  null comment '备注',
    paid_at    int(10)        default 0    not null comment '支付时间',
    status      tinyint(2)   default 1  not null comment '订单状态 1：未支付 2: 已支付 3：已发货 4：已收货 5：未退款 6：已退款',
    is_delete   tinyint(2)   default 0 not null comment '是否删除：0：未删除 1:删除',
    create_time int(10)                 not null comment '创建时间',
    update_time int(10)                 not null comment '修改时间'
);
create index IDX_ORDER_ID on geek_order (order_no);

# 订单商品表
create table geek_order_goods
(
    id          int auto_increment   primary key,
    order_no    varchar(50)	not null comment '订单ID',
    user_id     int     default 0     null comment '用户ID',
    goods_id     varchar(50)	not null comment '商品ID',
    goods_num    int(10)     default 0     null comment '商品数量',
    goods_price    int(10)     default 0     null comment '商品金额',
    order_price  int(10)          default 0            null comment '实付订单金额',
    discount_price  int(10)          default 0            null comment '优惠金额',
    is_delete   tinyint(2)   default 0 not null comment '是否删除：0：未删除 1:删除',
    create_time int(10)                 not null comment '创建时间',
    update_time int(10)                 not null comment '修改时间'
);
create index IDX_ORDER_ID on geek_order_goods (order_no);