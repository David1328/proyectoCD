PGDMP                     
    y         
   proyectocd    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16807 
   proyectocd    DATABASE     f   CREATE DATABASE proyectocd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE proyectocd;
                postgres    false                        2615    16808    disquera    SCHEMA        CREATE SCHEMA disquera;
    DROP SCHEMA disquera;
                postgres    false            ?            1259    16809    cantante    TABLE     ?   CREATE TABLE disquera.cantante (
    id_cantante integer NOT NULL,
    nombre text NOT NULL,
    categoria text NOT NULL,
    nick_name text NOT NULL
);
    DROP TABLE disquera.cantante;
       disquera         heap    postgres    false    6            ?            1259    16817    disco    TABLE     _  CREATE TABLE disquera.disco (
    id_disco integer NOT NULL,
    nombre_album text NOT NULL,
    compania_productora text NOT NULL,
    formato text NOT NULL,
    ano_lanzamiento text NOT NULL,
    id_formato integer NOT NULL,
    id_artista_principal integer NOT NULL,
    nick_artistas_secundarios text NOT NULL,
    cant_discos integer NOT NULL
);
    DROP TABLE disquera.disco;
       disquera         heap    postgres    false    6            ?            1259    16842    album_cantante    VIEW     ?   CREATE VIEW disquera.album_cantante AS
 SELECT cantante.id_cantante,
    cantante.nombre,
    disco.nombre_album
   FROM (disquera.cantante
     RIGHT JOIN disquera.disco ON ((cantante.id_cantante = disco.id_artista_principal)));
 #   DROP VIEW disquera.album_cantante;
       disquera          postgres    false    201    201    203    203    6            ?            1259    16815    cantante_id_cantante_seq    SEQUENCE     ?   CREATE SEQUENCE disquera.cantante_id_cantante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE disquera.cantante_id_cantante_seq;
       disquera          postgres    false    201    6            ?           0    0    cantante_id_cantante_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE disquera.cantante_id_cantante_seq OWNED BY disquera.cantante.id_cantante;
          disquera          postgres    false    202            ?            1259    16825    formato_album    TABLE     k   CREATE TABLE disquera.formato_album (
    id_formato integer NOT NULL,
    nombre_formato text NOT NULL
);
 #   DROP TABLE disquera.formato_album;
       disquera         heap    postgres    false    6            ?            1259    16850    disco_formatoAlbum    VIEW     ?   CREATE VIEW disquera."disco_formatoAlbum" AS
 SELECT disco.id_disco,
    disco.nombre_album,
    formato_album.nombre_formato
   FROM (disquera.disco
     LEFT JOIN disquera.formato_album ON ((disco.id_disco = formato_album.id_formato)));
 )   DROP VIEW disquera."disco_formatoAlbum";
       disquera          postgres    false    203    205    205    203    6            ?            1259    16823    disco_id_disco_seq    SEQUENCE     ?   CREATE SEQUENCE disquera.disco_id_disco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE disquera.disco_id_disco_seq;
       disquera          postgres    false    6    203            ?           0    0    disco_id_disco_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE disquera.disco_id_disco_seq OWNED BY disquera.disco.id_disco;
          disquera          postgres    false    204            ?            1259    16831    formato_album_id_formato_seq    SEQUENCE     ?   CREATE SEQUENCE disquera.formato_album_id_formato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE disquera.formato_album_id_formato_seq;
       disquera          postgres    false    6    205            ?           0    0    formato_album_id_formato_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE disquera.formato_album_id_formato_seq OWNED BY disquera.formato_album.id_formato;
          disquera          postgres    false    206            ?            1259    16846    genero_album    VIEW     ?   CREATE VIEW disquera.genero_album AS
 SELECT cantante.id_cantante,
    cantante.categoria,
    disco.nombre_album
   FROM (disquera.cantante
     RIGHT JOIN disquera.disco ON ((cantante.id_cantante = disco.id_artista_principal)));
 !   DROP VIEW disquera.genero_album;
       disquera          postgres    false    201    201    203    203    6            >           2604    16833    cantante id_cantante    DEFAULT     ?   ALTER TABLE ONLY disquera.cantante ALTER COLUMN id_cantante SET DEFAULT nextval('disquera.cantante_id_cantante_seq'::regclass);
 E   ALTER TABLE disquera.cantante ALTER COLUMN id_cantante DROP DEFAULT;
       disquera          postgres    false    202    201            ?           2604    16834    disco id_disco    DEFAULT     t   ALTER TABLE ONLY disquera.disco ALTER COLUMN id_disco SET DEFAULT nextval('disquera.disco_id_disco_seq'::regclass);
 ?   ALTER TABLE disquera.disco ALTER COLUMN id_disco DROP DEFAULT;
       disquera          postgres    false    204    203            @           2604    16835    formato_album id_formato    DEFAULT     ?   ALTER TABLE ONLY disquera.formato_album ALTER COLUMN id_formato SET DEFAULT nextval('disquera.formato_album_id_formato_seq'::regclass);
 I   ALTER TABLE disquera.formato_album ALTER COLUMN id_formato DROP DEFAULT;
       disquera          postgres    false    206    205            ?          0    16809    cantante 
   TABLE DATA           O   COPY disquera.cantante (id_cantante, nombre, categoria, nick_name) FROM stdin;
    disquera          postgres    false    201   l"       ?          0    16817    disco 
   TABLE DATA           ?   COPY disquera.disco (id_disco, nombre_album, compania_productora, formato, ano_lanzamiento, id_formato, id_artista_principal, nick_artistas_secundarios, cant_discos) FROM stdin;
    disquera          postgres    false    203   
#       ?          0    16825    formato_album 
   TABLE DATA           E   COPY disquera.formato_album (id_formato, nombre_formato) FROM stdin;
    disquera          postgres    false    205   s#       ?           0    0    cantante_id_cantante_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('disquera.cantante_id_cantante_seq', 4, true);
          disquera          postgres    false    202            ?           0    0    disco_id_disco_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('disquera.disco_id_disco_seq', 1, false);
          disquera          postgres    false    204            ?           0    0    formato_album_id_formato_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('disquera.formato_album_id_formato_seq', 1, false);
          disquera          postgres    false    206            B           2606    16837    cantante PK_usuarios_cantante 
   CONSTRAINT     h   ALTER TABLE ONLY disquera.cantante
    ADD CONSTRAINT "PK_usuarios_cantante" PRIMARY KEY (id_cantante);
 K   ALTER TABLE ONLY disquera.cantante DROP CONSTRAINT "PK_usuarios_cantante";
       disquera            postgres    false    201            D           2606    16839    disco pk_disquera_disco 
   CONSTRAINT     ]   ALTER TABLE ONLY disquera.disco
    ADD CONSTRAINT pk_disquera_disco PRIMARY KEY (id_disco);
 C   ALTER TABLE ONLY disquera.disco DROP CONSTRAINT pk_disquera_disco;
       disquera            postgres    false    203            F           2606    16841 '   formato_album pk_disquera_formato_album 
   CONSTRAINT     o   ALTER TABLE ONLY disquera.formato_album
    ADD CONSTRAINT pk_disquera_formato_album PRIMARY KEY (id_formato);
 S   ALTER TABLE ONLY disquera.formato_album DROP CONSTRAINT pk_disquera_formato_album;
       disquera            postgres    false    205            ?   ?   x?m??
?0E????_ MQ2?Dl???<?`#MR???o"V??r?G^M??/?FONl?F۴???V?:o??Fq???l`??R|B??2V?]t?nb???????)&/?u:s;?,??e?υ?z,2???}GD/??>?      ?   Y   x?3?t?QHN?+?T?м̲Ԣ??δ????|N##CN?
u?Spvr?u??42?2?t???/J-Ʃ?ܜ3+?(=??А+F??? ?U      ?   &   x?3?tv?2?????L?,??2?LN,N-I?????? {Y?     