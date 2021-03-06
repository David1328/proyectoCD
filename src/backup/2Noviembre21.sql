PGDMP     *    (    
        
    y         
   proyectoCD    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    42081 
   proyectoCD    DATABASE     ?   CREATE DATABASE "proyectoCD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "proyectoCD";
                postgres    false                        2615    42082    disquera    SCHEMA        CREATE SCHEMA disquera;
    DROP SCHEMA disquera;
                postgres    false            ?            1259    42085    cantante    TABLE     ?   CREATE TABLE disquera.cantante (
    id_cantante integer NOT NULL,
    nombre text NOT NULL,
    categoria text NOT NULL,
    nick_name text NOT NULL
);
    DROP TABLE disquera.cantante;
       disquera         heap    postgres    false    7            ?            1259    42083    cantante_id_cantante_seq    SEQUENCE     ?   CREATE SEQUENCE disquera.cantante_id_cantante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE disquera.cantante_id_cantante_seq;
       disquera          postgres    false    204    7            "           0    0    cantante_id_cantante_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE disquera.cantante_id_cantante_seq OWNED BY disquera.cantante.id_cantante;
          disquera          postgres    false    203            ?            1259    42099    disco    TABLE     ?   CREATE TABLE disquera.disco (
    id_disco integer NOT NULL,
    nombre_album text NOT NULL,
    compania_productora text NOT NULL,
    formato text NOT NULL,
    ano_lanzamiento text NOT NULL,
    id_formato integer NOT NULL
);
    DROP TABLE disquera.disco;
       disquera         heap    postgres    false    7            ?            1259    42097    disco_id_disco_seq    SEQUENCE     ?   CREATE SEQUENCE disquera.disco_id_disco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE disquera.disco_id_disco_seq;
       disquera          postgres    false    206    7            #           0    0    disco_id_disco_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE disquera.disco_id_disco_seq OWNED BY disquera.disco.id_disco;
          disquera          postgres    false    205            ?            1259    42108    formato_album    TABLE     k   CREATE TABLE disquera.formato_album (
    id_formato integer NOT NULL,
    nombre_formato text NOT NULL
);
 #   DROP TABLE disquera.formato_album;
       disquera         heap    postgres    false    7            ?            1259    42111    formato_album_id_formato_seq    SEQUENCE     ?   CREATE SEQUENCE disquera.formato_album_id_formato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE disquera.formato_album_id_formato_seq;
       disquera          postgres    false    7    207            $           0    0    formato_album_id_formato_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE disquera.formato_album_id_formato_seq OWNED BY disquera.formato_album.id_formato;
          disquera          postgres    false    208            ?
           2604    42088    cantante id_cantante    DEFAULT     ?   ALTER TABLE ONLY disquera.cantante ALTER COLUMN id_cantante SET DEFAULT nextval('disquera.cantante_id_cantante_seq'::regclass);
 E   ALTER TABLE disquera.cantante ALTER COLUMN id_cantante DROP DEFAULT;
       disquera          postgres    false    204    203    204            ?
           2604    42102    disco id_disco    DEFAULT     t   ALTER TABLE ONLY disquera.disco ALTER COLUMN id_disco SET DEFAULT nextval('disquera.disco_id_disco_seq'::regclass);
 ?   ALTER TABLE disquera.disco ALTER COLUMN id_disco DROP DEFAULT;
       disquera          postgres    false    205    206    206            ?
           2604    42113    formato_album id_formato    DEFAULT     ?   ALTER TABLE ONLY disquera.formato_album ALTER COLUMN id_formato SET DEFAULT nextval('disquera.formato_album_id_formato_seq'::regclass);
 I   ALTER TABLE disquera.formato_album ALTER COLUMN id_formato DROP DEFAULT;
       disquera          postgres    false    208    207                      0    42085    cantante 
   TABLE DATA           O   COPY disquera.cantante (id_cantante, nombre, categoria, nick_name) FROM stdin;
    disquera          postgres    false    204   ?                 0    42099    disco 
   TABLE DATA           t   COPY disquera.disco (id_disco, nombre_album, compania_productora, formato, ano_lanzamiento, id_formato) FROM stdin;
    disquera          postgres    false    206   7                 0    42108    formato_album 
   TABLE DATA           E   COPY disquera.formato_album (id_formato, nombre_formato) FROM stdin;
    disquera          postgres    false    207   T       %           0    0    cantante_id_cantante_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('disquera.cantante_id_cantante_seq', 4, true);
          disquera          postgres    false    203            &           0    0    disco_id_disco_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('disquera.disco_id_disco_seq', 1, false);
          disquera          postgres    false    205            '           0    0    formato_album_id_formato_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('disquera.formato_album_id_formato_seq', 1, false);
          disquera          postgres    false    208            ?
           2606    42093    cantante PK_usuarios_cantante 
   CONSTRAINT     h   ALTER TABLE ONLY disquera.cantante
    ADD CONSTRAINT "PK_usuarios_cantante" PRIMARY KEY (id_cantante);
 K   ALTER TABLE ONLY disquera.cantante DROP CONSTRAINT "PK_usuarios_cantante";
       disquera            postgres    false    204            ?
           2606    42107    disco pk_disquera_disco 
   CONSTRAINT     ]   ALTER TABLE ONLY disquera.disco
    ADD CONSTRAINT pk_disquera_disco PRIMARY KEY (id_disco);
 C   ALTER TABLE ONLY disquera.disco DROP CONSTRAINT pk_disquera_disco;
       disquera            postgres    false    206            ?
           2606    42121 '   formato_album pk_disquera_formato_album 
   CONSTRAINT     o   ALTER TABLE ONLY disquera.formato_album
    ADD CONSTRAINT pk_disquera_formato_album PRIMARY KEY (id_formato);
 S   ALTER TABLE ONLY disquera.formato_album DROP CONSTRAINT pk_disquera_formato_album;
       disquera            postgres    false    207               m   x?3?tI,?L???W(N?L?2??J??M?? ?L?????"Π??ļ???D???L?(1/9#?,h5? ? ?5?t?K)J-??)n?UԔ3dxbz>??)\1z\\\ ?S/?            x?????? ? ?            x?????? ? ?     