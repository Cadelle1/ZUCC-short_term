/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     2020/7/4 8:40:43                             */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ADDRESS_ADD_CUSTOMER') then
    alter table address
       delete foreign key FK_ADDRESS_ADD_CUSTOMER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HAS_COUP_HAS_COUP_CUSTOMER') then
    alter table has_coup
       delete foreign key FK_HAS_COUP_HAS_COUP_CUSTOMER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HAS_COUP_HAS_COUP2_STORE') then
    alter table has_coup
       delete foreign key FK_HAS_COUP_HAS_COUP2_STORE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HAS_COUP_HAS_COUP3_COUP') then
    alter table has_coup
       delete foreign key FK_HAS_COUP_HAS_COUP3_COUP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDER_DE_ORDER_DET_PRODUCT') then
    alter table order_detail
       delete foreign key FK_ORDER_DE_ORDER_DET_PRODUCT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDER_DE_ORDER_DET_ORDERS') then
    alter table order_detail
       delete foreign key FK_ORDER_DE_ORDER_DET_ORDERS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDERS_RELATIONS_COUP') then
    alter table orders
       delete foreign key FK_ORDERS_RELATIONS_COUP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDERS_RELATIONS_ADDRESS') then
    alter table orders
       delete foreign key FK_ORDERS_RELATIONS_ADDRESS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDERS_RELATIONS_STORE') then
    alter table orders
       delete foreign key FK_ORDERS_RELATIONS_STORE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDERS_RELATIONS_CUSTOMER') then
    alter table orders
       delete foreign key FK_ORDERS_RELATIONS_CUSTOMER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDERS_RELATIONS_RIDER') then
    alter table orders
       delete foreign key FK_ORDERS_RELATIONS_RIDER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORDERS_RELATIONS_DISCOUNT') then
    alter table orders
       delete foreign key FK_ORDERS_RELATIONS_DISCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PRODUCT_SORT_PRODUCT_') then
    alter table product
       delete foreign key FK_PRODUCT_SORT_PRODUCT_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PRODUCT__PRODUCT_E_STORE') then
    alter table product_eval
       delete foreign key FK_PRODUCT__PRODUCT_E_STORE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PRODUCT__PRODUCT_E_CUSTOMER') then
    alter table product_eval
       delete foreign key FK_PRODUCT__PRODUCT_E_CUSTOMER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PRODUCT__PRODUCT_E_PRODUCT') then
    alter table product_eval
       delete foreign key FK_PRODUCT__PRODUCT_E_PRODUCT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RIDER_BI_RIDER_BIL_RIDER') then
    alter table rider_bill
       delete foreign key FK_RIDER_BI_RIDER_BIL_RIDER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RIDER_BI_RIDER_BIL_ORDERS') then
    alter table rider_bill
       delete foreign key FK_RIDER_BI_RIDER_BIL_ORDERS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SUM_SENT_SUM_SENT_COUP') then
    alter table sum_sent
       delete foreign key FK_SUM_SENT_SUM_SENT_COUP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SUM_SENT_SUM_SENT2_CUSTOMER') then
    alter table sum_sent
       delete foreign key FK_SUM_SENT_SUM_SENT2_CUSTOMER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SUM_SENT_SUM_SENT3_STORE') then
    alter table sum_sent
       delete foreign key FK_SUM_SENT_SUM_SENT3_STORE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='add_FK'
     and t.table_name='address'
) then
   drop index address.add_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='address_PK'
     and t.table_name='address'
) then
   drop index address.address_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='address'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table address
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='coup_PK'
     and t.table_name='coup'
) then
   drop index coup.coup_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='coup'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table coup
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='customer_PK'
     and t.table_name='customer'
) then
   drop index customer.customer_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='customer'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table customer
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='discount_PK'
     and t.table_name='discount'
) then
   drop index discount.discount_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='discount'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table discount
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='has_coup3_FK'
     and t.table_name='has_coup'
) then
   drop index has_coup.has_coup3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='has_coup2_FK'
     and t.table_name='has_coup'
) then
   drop index has_coup.has_coup2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='has_coup_FK'
     and t.table_name='has_coup'
) then
   drop index has_coup.has_coup_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='has_coup_PK'
     and t.table_name='has_coup'
) then
   drop index has_coup.has_coup_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='has_coup'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table has_coup
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='manager_PK'
     and t.table_name='manager'
) then
   drop index manager.manager_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='manager'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table manager
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='order_detail2_FK'
     and t.table_name='order_detail'
) then
   drop index order_detail.order_detail2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='order_detail_FK'
     and t.table_name='order_detail'
) then
   drop index order_detail.order_detail_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='order_detail_PK'
     and t.table_name='order_detail'
) then
   drop index order_detail.order_detail_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='order_detail'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table order_detail
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='Relationship_11_FK'
     and t.table_name='orders'
) then
   drop index orders.Relationship_11_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='Relationship_10_FK'
     and t.table_name='orders'
) then
   drop index orders.Relationship_10_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='Relationship_9_FK'
     and t.table_name='orders'
) then
   drop index orders.Relationship_9_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='Relationship_7_FK'
     and t.table_name='orders'
) then
   drop index orders.Relationship_7_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='Relationship_6_FK'
     and t.table_name='orders'
) then
   drop index orders.Relationship_6_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='Relationship_5_FK'
     and t.table_name='orders'
) then
   drop index orders.Relationship_5_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='orders_PK'
     and t.table_name='orders'
) then
   drop index orders.orders_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='orders'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table orders
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='sort_FK'
     and t.table_name='product'
) then
   drop index product.sort_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='product_PK'
     and t.table_name='product'
) then
   drop index product.product_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='product'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table product
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='product_eval3_FK'
     and t.table_name='product_eval'
) then
   drop index product_eval.product_eval3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='product_eval2_FK'
     and t.table_name='product_eval'
) then
   drop index product_eval.product_eval2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='product_eval_FK'
     and t.table_name='product_eval'
) then
   drop index product_eval.product_eval_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='product_eval_PK'
     and t.table_name='product_eval'
) then
   drop index product_eval.product_eval_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='product_eval'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table product_eval
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='product_sort_PK'
     and t.table_name='product_sort'
) then
   drop index product_sort.product_sort_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='product_sort'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table product_sort
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='rider_PK'
     and t.table_name='rider'
) then
   drop index rider.rider_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='rider'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table rider
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='rider_bill2_FK'
     and t.table_name='rider_bill'
) then
   drop index rider_bill.rider_bill2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='rider_bill_FK'
     and t.table_name='rider_bill'
) then
   drop index rider_bill.rider_bill_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='rider_bill_PK'
     and t.table_name='rider_bill'
) then
   drop index rider_bill.rider_bill_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='rider_bill'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table rider_bill
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='store_PK'
     and t.table_name='store'
) then
   drop index store.store_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='store'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table store
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='sum_sent3_FK'
     and t.table_name='sum_sent'
) then
   drop index sum_sent.sum_sent3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='sum_sent2_FK'
     and t.table_name='sum_sent'
) then
   drop index sum_sent.sum_sent2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='sum_sent_FK'
     and t.table_name='sum_sent'
) then
   drop index sum_sent.sum_sent_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='sum_sent_PK'
     and t.table_name='sum_sent'
) then
   drop index sum_sent.sum_sent_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='sum_sent'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table sum_sent
end if;

/*==============================================================*/
/* Table: address                                               */
/*==============================================================*/
create table address 
(
   add_no               integer                        not null,
   cus_no               integer                        null,
   add_province         varchar(20)                    not null,
   add_city             varchar(20)                    not null,
   add_area             varchar(20)                    not null,
   add_add              varchar(20)                    not null,
   add_peo              varchar(20)                    not null,
   add_phone            varchar(20)                    not null,
   constraint PK_ADDRESS primary key (add_no)
);

/*==============================================================*/
/* Index: address_PK                                            */
/*==============================================================*/
create unique index address_PK on address (
add_no ASC
);

/*==============================================================*/
/* Index: add_FK                                                */
/*==============================================================*/
create index add_FK on address (
cus_no ASC
);

/*==============================================================*/
/* Table: coup                                                  */
/*==============================================================*/
create table coup 
(
   coup_no              integer                        not null,
   coup_money           float                          not null,
   coup_reqcount        integer                        not null,
   start_date           timestamp                      not null,
   end_date             timestamp                      not null,
   constraint PK_COUP primary key (coup_no)
);

/*==============================================================*/
/* Index: coup_PK                                               */
/*==============================================================*/
create unique index coup_PK on coup (
coup_no ASC
);

/*==============================================================*/
/* Table: customer                                              */
/*==============================================================*/
create table customer 
(
   cus_no               integer                        not null,
   cus_name             varchar(20)                    not null,
   cus_sex              smallint                       not null,
   cus_pwd              varchar(20)                    not null,
   cus_phone            varchar(20)                    not null,
   cus_email            varchar(20)                    not null,
   cus_city             varchar(20)                    not null,
   cus_regdate          timestamp                      not null,
   cus_is_member        smallint                       not null,
   cus_memenddate       timestamp                      null,
   constraint PK_CUSTOMER primary key (cus_no)
);

/*==============================================================*/
/* Index: customer_PK                                           */
/*==============================================================*/
create unique index customer_PK on customer (
cus_no ASC
);

/*==============================================================*/
/* Table: discount                                              */
/*==============================================================*/
create table discount 
(
   dis_no               integer                        not null,
   dis_require          float                          not null,
   dis_money            float                          not null,
   dis_ifadd            smallint                       not null,
   constraint PK_DISCOUNT primary key (dis_no)
);

/*==============================================================*/
/* Index: discount_PK                                           */
/*==============================================================*/
create unique index discount_PK on discount (
dis_no ASC
);

/*==============================================================*/
/* Table: has_coup                                              */
/*==============================================================*/
create table has_coup 
(
   cus_no               integer                        not null,
   store_no             integer                        not null,
   coup_no              integer                        not null,
   has_count            integer                        not null,
   has_enddate          timestamp                      null,
   constraint PK_HAS_COUP primary key clustered (cus_no, store_no, coup_no)
);

/*==============================================================*/
/* Index: has_coup_PK                                           */
/*==============================================================*/
create unique clustered index has_coup_PK on has_coup (
cus_no ASC,
store_no ASC,
coup_no ASC
);

/*==============================================================*/
/* Index: has_coup_FK                                           */
/*==============================================================*/
create index has_coup_FK on has_coup (
cus_no ASC
);

/*==============================================================*/
/* Index: has_coup2_FK                                          */
/*==============================================================*/
create index has_coup2_FK on has_coup (
store_no ASC
);

/*==============================================================*/
/* Index: has_coup3_FK                                          */
/*==============================================================*/
create index has_coup3_FK on has_coup (
coup_no ASC
);

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager 
(
   manager_no           integer                        not null,
   manager_name         varchar(20)                    not null,
   manager_pwd          varchar(20)                    not null,
   constraint PK_MANAGER primary key (manager_no)
);

/*==============================================================*/
/* Index: manager_PK                                            */
/*==============================================================*/
create unique index manager_PK on manager (
manager_no ASC
);

/*==============================================================*/
/* Table: order_detail                                          */
/*==============================================================*/
create table order_detail 
(
   pro_no               integer                        not null,
   order_no             integer                        not null,
   order_count          integer                        not null,
   order_price          float                          not null,
   order_singledis      float                          not null,
   constraint PK_ORDER_DETAIL primary key clustered (pro_no, order_no)
);

/*==============================================================*/
/* Index: order_detail_PK                                       */
/*==============================================================*/
create unique clustered index order_detail_PK on order_detail (
pro_no ASC,
order_no ASC
);

/*==============================================================*/
/* Index: order_detail_FK                                       */
/*==============================================================*/
create index order_detail_FK on order_detail (
pro_no ASC
);

/*==============================================================*/
/* Index: order_detail2_FK                                      */
/*==============================================================*/
create index order_detail2_FK on order_detail (
order_no ASC
);

/*==============================================================*/
/* Table: orders                                                */
/*==============================================================*/
create table orders 
(
   order_no             integer                        not null,
   rider_no             integer                        null,
   dis_no               integer                        null,
   add_no               integer                        null,
   coup_no              integer                        null,
   cus_no               integer                        null,
   store_no             integer                        null,
   original_sum         float                          not null,
   final_sum            float                          not null,
   order_time           timestamp                      not null,
   arrive_time          timestamp                      not null,
   order_state          varchar(20)                    not null,
   constraint PK_ORDERS primary key (order_no)
);

/*==============================================================*/
/* Index: orders_PK                                             */
/*==============================================================*/
create unique index orders_PK on orders (
order_no ASC
);

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on orders (
store_no ASC
);

/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create index Relationship_6_FK on orders (
cus_no ASC
);

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on orders (
rider_no ASC
);

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on orders (
dis_no ASC
);

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/
create index Relationship_10_FK on orders (
coup_no ASC
);

/*==============================================================*/
/* Index: Relationship_11_FK                                    */
/*==============================================================*/
create index Relationship_11_FK on orders (
add_no ASC
);

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product 
(
   pro_no               integer                        not null,
   prosort_no           integer                        null,
   pro_name             varchar(20)                    not null,
   pro_price            float                          not null,
   pro_discount         float                          not null,
   constraint PK_PRODUCT primary key (pro_no)
);

/*==============================================================*/
/* Index: product_PK                                            */
/*==============================================================*/
create unique index product_PK on product (
pro_no ASC
);

/*==============================================================*/
/* Index: sort_FK                                               */
/*==============================================================*/
create index sort_FK on product (
prosort_no ASC
);

/*==============================================================*/
/* Table: product_eval                                          */
/*==============================================================*/
create table product_eval 
(
   store_no             integer                        not null,
   cus_no               integer                        not null,
   pro_no               integer                        not null,
   eval_content         varchar(50)                    null,
   eval_date            timestamp                      null,
   eval_level           float                          null,
   eval_pic             long binary                    null,
   constraint PK_PRODUCT_EVAL primary key clustered (store_no, cus_no, pro_no)
);

/*==============================================================*/
/* Index: product_eval_PK                                       */
/*==============================================================*/
create unique clustered index product_eval_PK on product_eval (
store_no ASC,
cus_no ASC,
pro_no ASC
);

/*==============================================================*/
/* Index: product_eval_FK                                       */
/*==============================================================*/
create index product_eval_FK on product_eval (
store_no ASC
);

/*==============================================================*/
/* Index: product_eval2_FK                                      */
/*==============================================================*/
create index product_eval2_FK on product_eval (
cus_no ASC
);

/*==============================================================*/
/* Index: product_eval3_FK                                      */
/*==============================================================*/
create index product_eval3_FK on product_eval (
pro_no ASC
);

/*==============================================================*/
/* Table: product_sort                                          */
/*==============================================================*/
create table product_sort 
(
   prosort_no           integer                        not null,
   prosort_name         varchar(20)                    not null,
   prosort_count        integer                        not null,
   constraint PK_PRODUCT_SORT primary key (prosort_no)
);

/*==============================================================*/
/* Index: product_sort_PK                                       */
/*==============================================================*/
create unique index product_sort_PK on product_sort (
prosort_no ASC
);

/*==============================================================*/
/* Table: rider                                                 */
/*==============================================================*/
create table rider 
(
   rider_no             integer                        not null,
   rider_name           varchar(20)                    not null,
   startdate            timestamp                      not null,
   rider_identity       varchar(20)                    not null,
   constraint PK_RIDER primary key (rider_no)
);

/*==============================================================*/
/* Index: rider_PK                                              */
/*==============================================================*/
create unique index rider_PK on rider (
rider_no ASC
);

/*==============================================================*/
/* Table: rider_bill                                            */
/*==============================================================*/
create table rider_bill 
(
   rider_no             integer                        not null,
   order_no             integer                        not null,
   riderbill_date       timestamp                      not null,
   riderbill_eval       varchar(50)                    null,
   riderbill_single     float                          not null,
   constraint PK_RIDER_BILL primary key clustered (rider_no, order_no)
);

/*==============================================================*/
/* Index: rider_bill_PK                                         */
/*==============================================================*/
create unique clustered index rider_bill_PK on rider_bill (
rider_no ASC,
order_no ASC
);

/*==============================================================*/
/* Index: rider_bill_FK                                         */
/*==============================================================*/
create index rider_bill_FK on rider_bill (
rider_no ASC
);

/*==============================================================*/
/* Index: rider_bill2_FK                                        */
/*==============================================================*/
create index rider_bill2_FK on rider_bill (
order_no ASC
);

/*==============================================================*/
/* Table: store                                                 */
/*==============================================================*/
create table store 
(
   store_no             integer                        not null,
   store_name           varchar(20)                    not null,
   store_level          float                          null,
   store_per_avg        float                          null,
   store_total_count    integer                        not null,
   constraint PK_STORE primary key (store_no)
);

/*==============================================================*/
/* Index: store_PK                                              */
/*==============================================================*/
create unique index store_PK on store (
store_no ASC
);

/*==============================================================*/
/* Table: sum_sent                                              */
/*==============================================================*/
create table sum_sent 
(
   coup_no              integer                        not null,
   cus_no               integer                        not null,
   store_no             integer                        not null,
   count_order          integer                        not null,
   constraint PK_SUM_SENT primary key clustered (coup_no, cus_no, store_no)
);

/*==============================================================*/
/* Index: sum_sent_PK                                           */
/*==============================================================*/
create unique clustered index sum_sent_PK on sum_sent (
coup_no ASC,
cus_no ASC,
store_no ASC
);

/*==============================================================*/
/* Index: sum_sent_FK                                           */
/*==============================================================*/
create index sum_sent_FK on sum_sent (
coup_no ASC
);

/*==============================================================*/
/* Index: sum_sent2_FK                                          */
/*==============================================================*/
create index sum_sent2_FK on sum_sent (
cus_no ASC
);

/*==============================================================*/
/* Index: sum_sent3_FK                                          */
/*==============================================================*/
create index sum_sent3_FK on sum_sent (
store_no ASC
);

alter table address
   add constraint FK_ADDRESS_ADD_CUSTOMER foreign key (cus_no)
      references customer (cus_no)
      on update restrict
      on delete restrict;

alter table has_coup
   add constraint FK_HAS_COUP_HAS_COUP_CUSTOMER foreign key (cus_no)
      references customer (cus_no)
      on update restrict
      on delete restrict;

alter table has_coup
   add constraint FK_HAS_COUP_HAS_COUP2_STORE foreign key (store_no)
      references store (store_no)
      on update restrict
      on delete restrict;

alter table has_coup
   add constraint FK_HAS_COUP_HAS_COUP3_COUP foreign key (coup_no)
      references coup (coup_no)
      on update restrict
      on delete restrict;

alter table order_detail
   add constraint FK_ORDER_DE_ORDER_DET_PRODUCT foreign key (pro_no)
      references product (pro_no)
      on update restrict
      on delete restrict;

alter table order_detail
   add constraint FK_ORDER_DE_ORDER_DET_ORDERS foreign key (order_no)
      references orders (order_no)
      on update restrict
      on delete restrict;

alter table orders
   add constraint FK_ORDERS_RELATIONS_COUP foreign key (coup_no)
      references coup (coup_no)
      on update restrict
      on delete restrict;

alter table orders
   add constraint FK_ORDERS_RELATIONS_ADDRESS foreign key (add_no)
      references address (add_no)
      on update restrict
      on delete restrict;

alter table orders
   add constraint FK_ORDERS_RELATIONS_STORE foreign key (store_no)
      references store (store_no)
      on update restrict
      on delete restrict;

alter table orders
   add constraint FK_ORDERS_RELATIONS_CUSTOMER foreign key (cus_no)
      references customer (cus_no)
      on update restrict
      on delete restrict;

alter table orders
   add constraint FK_ORDERS_RELATIONS_RIDER foreign key (rider_no)
      references rider (rider_no)
      on update restrict
      on delete restrict;

alter table orders
   add constraint FK_ORDERS_RELATIONS_DISCOUNT foreign key (dis_no)
      references discount (dis_no)
      on update restrict
      on delete restrict;

alter table product
   add constraint FK_PRODUCT_SORT_PRODUCT_ foreign key (prosort_no)
      references product_sort (prosort_no)
      on update restrict
      on delete restrict;

alter table product_eval
   add constraint FK_PRODUCT__PRODUCT_E_STORE foreign key (store_no)
      references store (store_no)
      on update restrict
      on delete restrict;

alter table product_eval
   add constraint FK_PRODUCT__PRODUCT_E_CUSTOMER foreign key (cus_no)
      references customer (cus_no)
      on update restrict
      on delete restrict;

alter table product_eval
   add constraint FK_PRODUCT__PRODUCT_E_PRODUCT foreign key (pro_no)
      references product (pro_no)
      on update restrict
      on delete restrict;

alter table rider_bill
   add constraint FK_RIDER_BI_RIDER_BIL_RIDER foreign key (rider_no)
      references rider (rider_no)
      on update restrict
      on delete restrict;

alter table rider_bill
   add constraint FK_RIDER_BI_RIDER_BIL_ORDERS foreign key (order_no)
      references orders (order_no)
      on update restrict
      on delete restrict;

alter table sum_sent
   add constraint FK_SUM_SENT_SUM_SENT_COUP foreign key (coup_no)
      references coup (coup_no)
      on update restrict
      on delete restrict;

alter table sum_sent
   add constraint FK_SUM_SENT_SUM_SENT2_CUSTOMER foreign key (cus_no)
      references customer (cus_no)
      on update restrict
      on delete restrict;

alter table sum_sent
   add constraint FK_SUM_SENT_SUM_SENT3_STORE foreign key (store_no)
      references store (store_no)
      on update restrict
      on delete restrict;

