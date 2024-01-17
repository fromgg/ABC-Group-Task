Цель
Нам необходимо проверить уровень ваших знаний в области понимания задач.

Задача No 1
Дан массив php

<?php
$data = [
[
'country_name' => 'USA',
'country_code' => 'US',
'city_name' => 'New York',
'lat' => '40.7127753',
'lng' => '-74.0059728',
],
[
'country_name' => 'USA',
'country_code' => 'US',
'city_name' => 'Los Angeles',
'lat' => '34.0522342',
'lng' => '-118.2436849',
],
[
'country_name' => 'Philippines',
'country_code' => 'PH',
'city_name' => 'Manila',
'lat' => '14.5995124',
'lng' => '120.9842195',
],
[
'country_name' => 'Philippines',
'country_code' => 'PH',
'city_name' => 'Cebu',
'lat' => '10.3156993',
'lng' => '123.8854377',
]
];

Надо написать код который из этого массива сделает вот такой csv файл (см ниже)

Unset

Unset

Unset
Country name, Country code,Lat, Long
USA,US,"New York",40.7127753,-74.0059728
USA,US,"Los Angeles",34.0522342,-118.2436849
Philippines,PH,Manila,14.5995124,120.9842195
Philippines,PH,Cebu,10.3156993,123.8854377

Задача No 2
Даны 2 таблицы в БД (postgresql)

create sequence public.click_new_id_seq;
create table public.click
(
id bigserial primary key,
ip inet,
created_at timestamp(0) default now() not null,
referer text,
user_agent text
);

create table public.actions
(
id bigserial primary key,
event_date timestamp(0) not null,
click_id bigint not null,
created_at timestamp(0),
updated_at timestamp(0)
);
create index actions_click_id_index
on public.actions (click_id);

(задание см ниже)

Надо написать 2 SQL запроса:
1. Выбрать клики у которых точно есть actions
2. Выбрать клики у которых точно нету actions
