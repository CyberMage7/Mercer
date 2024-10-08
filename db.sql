PGDMP     5    -                |            Mercer    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    57409    Mercer    DATABASE     {   CREATE DATABASE "Mercer" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Mercer";
                postgres    false            �            1259    57418    donate    TABLE     0  CREATE TABLE public.donate (
    id integer NOT NULL,
    full_name character varying(50),
    email character varying(100),
    phone character varying(50),
    title character varying(40),
    author character varying(30),
    quantity integer,
    genre character varying(20),
    description text
);
    DROP TABLE public.donate;
       public         heap    postgres    false            �            1259    57417    donate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.donate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.donate_id_seq;
       public          postgres    false    217                       0    0    donate_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.donate_id_seq OWNED BY public.donate.id;
          public          postgres    false    216            �            1259    57411    signup    TABLE     �   CREATE TABLE public.signup (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(50),
    password character varying(20)
);
    DROP TABLE public.signup;
       public         heap    postgres    false            �            1259    57410    signup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.signup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.signup_id_seq;
       public          postgres    false    215            	           0    0    signup_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.signup_id_seq OWNED BY public.signup.id;
          public          postgres    false    214            k           2604    57421 	   donate id    DEFAULT     f   ALTER TABLE ONLY public.donate ALTER COLUMN id SET DEFAULT nextval('public.donate_id_seq'::regclass);
 8   ALTER TABLE public.donate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            j           2604    57414 	   signup id    DEFAULT     f   ALTER TABLE ONLY public.signup ALTER COLUMN id SET DEFAULT nextval('public.signup_id_seq'::regclass);
 8   ALTER TABLE public.signup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                      0    57418    donate 
   TABLE DATA           j   COPY public.donate (id, full_name, email, phone, title, author, quantity, genre, description) FROM stdin;
    public          postgres    false    217   �       �          0    57411    signup 
   TABLE DATA           L   COPY public.signup (id, first_name, last_name, email, password) FROM stdin;
    public          postgres    false    215   �       
           0    0    donate_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.donate_id_seq', 6, true);
          public          postgres    false    216                       0    0    signup_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.signup_id_seq', 6, true);
          public          postgres    false    214            o           2606    57425    donate donate_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.donate
    ADD CONSTRAINT donate_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.donate DROP CONSTRAINT donate_pkey;
       public            postgres    false    217            m           2606    57416    signup signup_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.signup
    ADD CONSTRAINT signup_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.signup DROP CONSTRAINT signup_pkey;
       public            postgres    false    215               �   x�u��N�0E���T�I
��B��
Ī�i��n�#��ӈ
���͜����xLL-�s�P���HD����(Um{�:�LC��WqZ"�R�M?�6�(�
Jmy�"�!�t�58u,�O��7:��"���3��K�
#�����o�/��/��$PXM0��r(à=���|h�׀qU�ި��
��2�1���ai�3�I�����C�HvZ1�~ c�o�      �   �   x�e��
�0�ϻ#���[^�WO�,�&�F!��+)��e�����~���2��J[�(~�aNM����䉒�`?�*��Ŵ*i���nӻ ��0Z�h`t+M��D��S�~����O�X�y�U�w���G�     