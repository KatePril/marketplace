CREATE DATABASE IF NOT EXISTS marketplace;

CREATE SCHEMA IF NOT EXISTS public;

CREATE TABLE IF NOT EXISTS public.customer
(
    customer_id serial NOT NULL PRIMARY KEY,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(50) NOT NULL UNIQUE,
    phone_number character varying(20) NOT NULL,
    password character varying(50) NOT NULL,
    salt character varying(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.shop
(
    shop_id serial NOT NULL PRIMARY KEY,
    name character varying(70) NOT NULL UNIQUE,
    description text,
    email character varying(50) NOT NULL,
    phone_number character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    salt character varying(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.shop_category
(
    shop_category_id serial NOT NULL PRIMARY KEY,
    name character varying(50) NOT NULL UNIQUE,
    description text
);

CREATE TABLE IF NOT EXISTS public.shop_shop_category
(
    shop_shop_id serial NOT NULL PRIMARY KEY,
    shop_category_shop_category_id serial NOT NULL
);

CREATE TABLE IF NOT EXISTS public.product
(
    product_id serial NOT NULL  PRIMARY KEY,
    name character varying(80) NOT NULL,
    description text,
    price numeric NOT NULL,
    quantity integer NOT NULL,
    shop_id serial NOT NULL
);

CREATE TABLE IF NOT EXISTS public.product_category
(
    product_category_id serial NOT NULL PRIMARY KEY,
    name character varying(80) NOT NULL UNIQUE,
    description text
);

CREATE TABLE IF NOT EXISTS public.product_product_category
(
    product_product_id serial NOT NULL PRIMARY KEY,
    product_category_product_category_id serial NOT NULL
);