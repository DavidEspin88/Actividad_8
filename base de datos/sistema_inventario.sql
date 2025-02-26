PGDMP  !    %                 }            sistema_inventario    16.6    16.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16400    sistema_inventario    DATABASE     �   CREATE DATABASE sistema_inventario WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
 "   DROP DATABASE sistema_inventario;
                postgres    false            �            1259    16401 	   productos    TABLE     �   CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    categoria character varying(100) NOT NULL,
    codigo character varying(10) NOT NULL,
    fecha_ingreso date NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16404    estudiantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.estudiantes_id_seq;
       public          postgres    false    215            �           0    0    estudiantes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.estudiantes_id_seq OWNED BY public.productos.id;
          public          postgres    false    216            �            1259    16409    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16412    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    217            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    218            U           2604    16413    productos id    DEFAULT     n   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.estudiantes_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            V           2604    16415    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �          0    16401 	   productos 
   TABLE DATA           Q   COPY public.productos (id, nombre, categoria, codigo, fecha_ingreso) FROM stdin;
    public          postgres    false    215   .       �          0    16409    usuarios 
   TABLE DATA           :   COPY public.usuarios (id, username, password) FROM stdin;
    public          postgres    false    217          �           0    0    estudiantes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.estudiantes_id_seq', 25, true);
          public          postgres    false    216            �           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 2, true);
          public          postgres    false    218            X           2606    16417     productos estudiantes_cedula_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT estudiantes_cedula_key UNIQUE (codigo);
 J   ALTER TABLE ONLY public.productos DROP CONSTRAINT estudiantes_cedula_key;
       public            postgres    false    215            Z           2606    16419    productos estudiantes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.productos DROP CONSTRAINT estudiantes_pkey;
       public            postgres    false    215            \           2606    16423    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    217            ^           2606    16425    usuarios usuarios_username_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_username_key UNIQUE (username);
 H   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_username_key;
       public            postgres    false    217            �   �   x�m�MN�0����@��&�.!��E+�V��L�A��<i���� ���>�[�o8RMY[c�g�"�����m�X�x�+1�Ƃ3�k�m�Qn	���a����W���$uZ��;�@ݯt����H��'9FOi�⽱ҭ�Ԃ�NU���j$��3%�s�p�6��0g�p�7&�z.�����!Gy��SOp"�?�,�%�Q?��w8	x�����F~o�      �      x�3�LL��̃�\F��ũE`�+F��� ���     