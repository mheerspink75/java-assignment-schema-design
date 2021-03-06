PGDMP         8            	    y           person_location_interest    14.0    14.0 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16442    person_location_interest    DATABASE     |   CREATE DATABASE person_location_interest WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 (   DROP DATABASE person_location_interest;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    16462    interest    TABLE     i   CREATE TABLE public.interest (
    interest_id integer NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public.interest;
       public         heap    postgres    false    3            ?            1259    16461    interest_interest_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.interest_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.interest_interest_id_seq;
       public          postgres    false    3    214                       0    0    interest_interest_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.interest_interest_id_seq OWNED BY public.interest.interest_id;
          public          postgres    false    213            ?            1259    16453    location    TABLE     ?   CREATE TABLE public.location (
    location_id integer NOT NULL,
    from_city character varying NOT NULL,
    from_state character varying NOT NULL,
    from_country character varying NOT NULL
);
    DROP TABLE public.location;
       public         heap    postgres    false    3            ?            1259    16452    location_location_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.location_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.location_location_id_seq;
       public          postgres    false    212    3                       0    0    location_location_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.location_location_id_seq OWNED BY public.location.location_id;
          public          postgres    false    211            ?            1259    16444    person    TABLE     ?   CREATE TABLE public.person (
    person_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    age integer NOT NULL,
    location_id integer NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false    3            ?            1259    16471    person_interest    TABLE     ?   CREATE TABLE public.person_interest (
    person_interest_id integer NOT NULL,
    person_id integer NOT NULL,
    interest_id integer NOT NULL
);
 #   DROP TABLE public.person_interest;
       public         heap    postgres    false    3            ?            1259    16470 &   person_interest_person_interest_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.person_interest_person_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.person_interest_person_interest_id_seq;
       public          postgres    false    216    3                       0    0 &   person_interest_person_interest_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.person_interest_person_interest_id_seq OWNED BY public.person_interest.person_interest_id;
          public          postgres    false    215            ?            1259    16443    person_person_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.person_person_id_seq;
       public          postgres    false    210    3                       0    0    person_person_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;
          public          postgres    false    209            m           2604    16465    interest interest_id    DEFAULT     |   ALTER TABLE ONLY public.interest ALTER COLUMN interest_id SET DEFAULT nextval('public.interest_interest_id_seq'::regclass);
 C   ALTER TABLE public.interest ALTER COLUMN interest_id DROP DEFAULT;
       public          postgres    false    214    213    214            l           2604    16456    location location_id    DEFAULT     |   ALTER TABLE ONLY public.location ALTER COLUMN location_id SET DEFAULT nextval('public.location_location_id_seq'::regclass);
 C   ALTER TABLE public.location ALTER COLUMN location_id DROP DEFAULT;
       public          postgres    false    211    212    212            k           2604    16447    person person_id    DEFAULT     t   ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);
 ?   ALTER TABLE public.person ALTER COLUMN person_id DROP DEFAULT;
       public          postgres    false    209    210    210            n           2604    16474 "   person_interest person_interest_id    DEFAULT     ?   ALTER TABLE ONLY public.person_interest ALTER COLUMN person_interest_id SET DEFAULT nextval('public.person_interest_person_interest_id_seq'::regclass);
 Q   ALTER TABLE public.person_interest ALTER COLUMN person_interest_id DROP DEFAULT;
       public          postgres    false    215    216    216            
          0    16462    interest 
   TABLE DATA           6   COPY public.interest (interest_id, title) FROM stdin;
    public          postgres    false    214   ?)                 0    16453    location 
   TABLE DATA           T   COPY public.location (location_id, from_city, from_state, from_country) FROM stdin;
    public          postgres    false    212   S*                 0    16444    person 
   TABLE DATA           T   COPY public.person (person_id, first_name, last_name, age, location_id) FROM stdin;
    public          postgres    false    210   /+                 0    16471    person_interest 
   TABLE DATA           U   COPY public.person_interest (person_interest_id, person_id, interest_id) FROM stdin;
    public          postgres    false    216   ,                  0    0    interest_interest_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.interest_interest_id_seq', 8, true);
          public          postgres    false    213                       0    0    location_location_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.location_location_id_seq', 12, true);
          public          postgres    false    211                       0    0 &   person_interest_person_interest_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.person_interest_person_interest_id_seq', 19, true);
          public          postgres    false    215                       0    0    person_person_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.person_person_id_seq', 12, true);
          public          postgres    false    209            t           2606    16469    interest interest_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.interest
    ADD CONSTRAINT interest_pkey PRIMARY KEY (interest_id);
 @   ALTER TABLE ONLY public.interest DROP CONSTRAINT interest_pkey;
       public            postgres    false    214            r           2606    16460    location location_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_id);
 @   ALTER TABLE ONLY public.location DROP CONSTRAINT location_pkey;
       public            postgres    false    212            v           2606    16476 $   person_interest person_interest_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.person_interest
    ADD CONSTRAINT person_interest_pkey PRIMARY KEY (person_interest_id);
 N   ALTER TABLE ONLY public.person_interest DROP CONSTRAINT person_interest_pkey;
       public            postgres    false    216            p           2606    16451    person person_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    210            y           2606    16487    person_interest interest_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.person_interest
    ADD CONSTRAINT interest_id FOREIGN KEY (interest_id) REFERENCES public.interest(interest_id) NOT VALID;
 E   ALTER TABLE ONLY public.person_interest DROP CONSTRAINT interest_id;
       public          postgres    false    214    216    3188            w           2606    16477    person location_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.person
    ADD CONSTRAINT location_id FOREIGN KEY (location_id) REFERENCES public.location(location_id) NOT VALID;
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT location_id;
       public          postgres    false    210    3186    212            x           2606    16482    person_interest person_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.person_interest
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;
 C   ALTER TABLE ONLY public.person_interest DROP CONSTRAINT person_id;
       public          postgres    false    3184    210    216            
   T   x?3?.?????K?2?JML??9=2?AN'Ô3,3%5_?=17??ˌ?)?<$n??@,?Ң??Ē??F??? M]         ?   x?m??N?@E?7_?/@L)?ehU	???ǎ?I?Ċ???T??z&M?l,?\????$???t?D2????+R??7>?9?+?<%??9q??pQ??9??I?t???H)ʳ??i ?g?????˨6㜙O??_?v??ɱJ??m???x??Y9cI*_?L?0\b?KG???*?2=T?j?C?j8H:ü6????ğ??0񏋦i? V?Z?         ?   x???n?@?????@Vd?NE?&?*?/?qQ|?M;?&?CR.6}???ĸ?IM0.?:??1??"??##ֈT?OR?????C?]?1???"?w?'p??N8?3kB/?z?ECz?^???????QQ?[1?(6i:?;??9H2㢒g????Wɋ?j?ܸƵl?0??7?Ov͙O?mZ?'?_/D?
 D;         U   x??? 1?P??aL4?\?u~?YA?L.6?n,??,?7m&/6?⸒P?Ƣ?My?ι'?=??k?n?^S#?{H?{?Z     