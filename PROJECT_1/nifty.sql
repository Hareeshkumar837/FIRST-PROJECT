create database project;

select * from project.nifty_history;

use project;

create or replace view nifty_trading_summary as select
date,
ROUND(Close, 2) AS close_price,
    ROUND(SMA5, 2) AS sma_5,
    ROUND(SMA10, 2) AS sma_10,
    ROUND(SMA15, 2) AS sma_15,
    ROUND(SMA20, 2) AS sma_20,
    ROUND(SMA30, 2) AS sma_30,
    ROUND(SMA40, 2) AS sma_40,
   `Signal` AS signal_raw,
    case
    when `signal`=1 THEN 'Buy'
    when `signal`=0 THEN 'Sell/Hold'
    else 'Neutral'
    end as trading_action
    from nifty_history
    where SMA40 is not null;