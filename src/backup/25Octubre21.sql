PGDMP                     	    y         
   proyectoCD    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    42081 
   proyectoCD    DATABASE     ?   CREATE DATABASE "proyectoCD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "proyectoCD";
                postgres    false                        2615    42082    usuarios    SCHEMA        CREATE SCHEMA usuarios;
    DROP SCHEMA usuarios;
                postgres    false            ?            1259    42085    cantante    TABLE     |   CREATE TABLE usuarios.cantante (
    id_cantante integer NOT NULL,
    nombre text NOT NULL,
    categoria text NOT NULL
);
    DROP TABLE usuarios.cantante;
       usuarios         heap    postgres    false    7            ?            1259    42083    cantante_id_cantante_seq    SEQUENCE     ?   CREATE SEQUENCE usuarios.cantante_id_cantante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE usuarios.cantante_id_cantante_seq;
       usuarios          postgres    false    204    7            
           0    0    cantante_id_cantante_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE usuarios.cantante_id_cantante_seq OWNED BY usuarios.cantante.id_cantante;
          usuarios          postgres    false    203            ?
           2604    42088    cantante id_cantante    DEFAULT     ?   ALTER TABLE ONLY usuarios.cantante ALTER COLUMN id_cantante SET DEFAULT nextval('usuarios.cantante_id_cantante_seq'::regclass);
 E   ALTER TABLE usuarios.cantante ALTER COLUMN id_cantante DROP DEFAULT;
       usuarios          postgres    false    204    203    204                      0    42085    cantante 
   TABLE DATA           D   COPY usuarios.cantante (id_cantante, nombre, categoria) FROM stdin;
    usuarios          postgres    false    204                     0    0    cantante_id_cantante_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('usuarios.cantante_id_cantante_seq', 3, true);
          usuarios          postgres    false    203            ?
           2606    42093    cantante PK_usuarios_cantante 
   CONSTRAINT     h   ALTER TABLE ONLY usuarios.cantante
    ADD CONSTRAINT "PK_usuarios_cantante" PRIMARY KEY (id_cantante);
 K   ALTER TABLE ONLY usuarios.cantante DROP CONSTRAINT "PK_usuarios_cantante";
       usuarios            postgres    false    204               D   x?3?tI,?L???W(N?2??J??M???2??r??uU0???v?24??,?/?24D?#qb???? ??     