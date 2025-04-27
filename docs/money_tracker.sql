-- 費目
drop table if exists category cascade;
create table category (
    id serial not null,
    name varchar(20) not null,
    display_order integer,
    disabled boolean default false not null,
    constraint category_PKC primary key (id)
);
alter table category
add constraint category_IX1 unique (name);
-- 出納帳
drop table if exists cashbook cascade;
create table cashbook (
    id serial not null,
    date date not null,
    category integer not null,
    income integer,
    expense integer,
    memo text,
    constraint cashbook_PKC primary key (id)
);
comment on table category is '費目';
comment on column category.id is 'ID';
comment on column category.name is '名前';
comment on column category.display_order is '表示順';
comment on column category.disabled is '無効フラグ';
comment on table cashbook is '出納帳';
comment on column cashbook.id is 'ID';
comment on column cashbook.date is '日付';
comment on column cashbook.category is '費目';
comment on column cashbook.income is '入金';
comment on column cashbook.expense is '出金';
comment on column cashbook.memo is 'メモ';