# 用户表
create table geek_user
(
    id          int auto_increment   primary key,
    user_id     int(10)		not null comment '用户ID',
    nick_name   varchar(125)  default '' not null comment '用户昵称',
    avatar_url  varchar(200)  default '' not null comment '用户头像',
    name        varchar(125)  default '' not null comment '用户姓名',
    sex         tinyint(2)   default 1  not null comment '用户性别：1：男 2：女 3：未知',
    phone		char(11)     default '' not  null comment '用户手机号',
    status      tinyint(2)   default 1  not null comment '协议状态 1：正常 2: 异常',
    is_delete   tinyint(2)   default 0 not null comment '是否删除：0：未删除 1:删除',
    create_time int(10)                 not null comment '创建时间',
    update_time int(10)                 not null comment '修改时间'
);
create index IDX_USER_ID on geek_user (user_id);
create index IDX_USER_PHONE on geek_user (phone);
