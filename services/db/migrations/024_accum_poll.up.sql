create table accumulate_balances
(
    id                varchar(50) not null primary key,
    chain_id          varchar(50) not null,
    asset_id          varchar(50) not null,
    address           varchar(50) not null,
    transaction_count decimal(65) not null default 0,
    total_received    decimal(65) not null default 0,
    total_sent        decimal(65) not null default 0,
    balance           decimal(65) not null default 0,
    utxo_count        decimal(65) not null default 0
);

create table output_addresses_accumulate
(
    type       smallint unsigned not null,
    output_id  varchar(50)    not null,
    address    varchar(50)    not null,
    processed  smallint unsigned not null default 0,
    primary key (type, output_id, address)
);

create index `output_addresses_accumulate_processed` on `output_addresses_accumulate` (processed);