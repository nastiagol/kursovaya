PGDMP         2                 |            Golubyatnikova/kursovaya    15.4    15.4 !    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    24737    Golubyatnikova/kursovaya    DATABASE     �   CREATE DATABASE "Golubyatnikova/kursovaya" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 *   DROP DATABASE "Golubyatnikova/kursovaya";
                postgres    false            �            1259    24738 
   department    TABLE     h   CREATE TABLE public.department (
    id integer NOT NULL,
    name text,
    head_of_department text
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    24745 	   documents    TABLE     b   CREATE TABLE public.documents (
    id integer NOT NULL,
    name text,
    project_id integer
);
    DROP TABLE public.documents;
       public         heap    postgres    false            �            1259    24766 
   members_ss    TABLE     �   CREATE TABLE public.members_ss (
    id integer NOT NULL,
    full_name text,
    department_id integer NOT NULL,
    "e-mail" text
);
    DROP TABLE public.members_ss;
       public         heap    postgres    false            �            1259    24761    members_ss_projects    TABLE     �   CREATE TABLE public.members_ss_projects (
    member_id integer NOT NULL,
    project_id integer NOT NULL,
    "position" text
);
 '   DROP TABLE public.members_ss_projects;
       public         heap    postgres    false            �            1259    24773    partners    TABLE     Y   CREATE TABLE public.partners (
    id integer NOT NULL,
    name text,
    phone text
);
    DROP TABLE public.partners;
       public         heap    postgres    false            �            1259    24780    partners_projects    TABLE     m   CREATE TABLE public.partners_projects (
    partners_id integer NOT NULL,
    project_id integer NOT NULL
);
 %   DROP TABLE public.partners_projects;
       public         heap    postgres    false            �            1259    24785    platform    TABLE     Z   CREATE TABLE public.platform (
    id integer NOT NULL,
    name text,
    format text
);
    DROP TABLE public.platform;
       public         heap    postgres    false            �            1259    24792    projects    TABLE     �   CREATE TABLE public.projects (
    id integer NOT NULL,
    name text,
    category text,
    head text,
    start_date date,
    finish_date date,
    budget numeric,
    platform_id integer
);
    DROP TABLE public.projects;
       public         heap    postgres    false            !          0    24738 
   department 
   TABLE DATA           B   COPY public.department (id, name, head_of_department) FROM stdin;
    public          postgres    false    214   �$       "          0    24745 	   documents 
   TABLE DATA           9   COPY public.documents (id, name, project_id) FROM stdin;
    public          postgres    false    215   d%       $          0    24766 
   members_ss 
   TABLE DATA           L   COPY public.members_ss (id, full_name, department_id, "e-mail") FROM stdin;
    public          postgres    false    217   �%       #          0    24761    members_ss_projects 
   TABLE DATA           P   COPY public.members_ss_projects (member_id, project_id, "position") FROM stdin;
    public          postgres    false    216   P'       %          0    24773    partners 
   TABLE DATA           3   COPY public.partners (id, name, phone) FROM stdin;
    public          postgres    false    218   !(       &          0    24780    partners_projects 
   TABLE DATA           D   COPY public.partners_projects (partners_id, project_id) FROM stdin;
    public          postgres    false    219   %)       '          0    24785    platform 
   TABLE DATA           4   COPY public.platform (id, name, format) FROM stdin;
    public          postgres    false    220   c)       (          0    24792    projects 
   TABLE DATA           j   COPY public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) FROM stdin;
    public          postgres    false    221   �)       �           2606    24744    department department_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    214            �           2606    24751    documents documents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public            postgres    false    215            �           2606    24772    members_ss memvers_ss_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.members_ss
    ADD CONSTRAINT memvers_ss_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.members_ss DROP CONSTRAINT memvers_ss_pkey;
       public            postgres    false    217            �           2606    24800    partners partners_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.partners DROP CONSTRAINT partners_pkey;
       public            postgres    false    218            �           2606    24791    platform platform_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.platform
    ADD CONSTRAINT platform_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.platform DROP CONSTRAINT platform_pkey;
       public            postgres    false    220            �           2606    24798    projects projects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public            postgres    false    221            �           2606    24813    members_ss department_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.members_ss
    ADD CONSTRAINT department_fk FOREIGN KEY (department_id) REFERENCES public.department(id) NOT VALID;
 B   ALTER TABLE ONLY public.members_ss DROP CONSTRAINT department_fk;
       public          postgres    false    217    214    3201            �           2606    24818    members_ss_projects member_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.members_ss_projects
    ADD CONSTRAINT member_fk FOREIGN KEY (member_id) REFERENCES public.members_ss(id) NOT VALID;
 G   ALTER TABLE ONLY public.members_ss_projects DROP CONSTRAINT member_fk;
       public          postgres    false    3205    217    216            �           2606    24927    partners_projects partners_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.partners_projects
    ADD CONSTRAINT partners_fk FOREIGN KEY (partners_id) REFERENCES public.partners(id) NOT VALID;
 G   ALTER TABLE ONLY public.partners_projects DROP CONSTRAINT partners_fk;
       public          postgres    false    3207    219    218            �           2606    24808    projects platform_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT platform_fk FOREIGN KEY (platform_id) REFERENCES public.platform(id) NOT VALID;
 >   ALTER TABLE ONLY public.projects DROP CONSTRAINT platform_fk;
       public          postgres    false    221    3209    220            �           2606    24803    documents project_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT project_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) NOT VALID;
 >   ALTER TABLE ONLY public.documents DROP CONSTRAINT project_fk;
       public          postgres    false    221    215    3211            �           2606    24823    members_ss_projects project_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.members_ss_projects
    ADD CONSTRAINT project_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) NOT VALID;
 H   ALTER TABLE ONLY public.members_ss_projects DROP CONSTRAINT project_fk;
       public          postgres    false    216    3211    221            �           2606    24922    partners_projects projects_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.partners_projects
    ADD CONSTRAINT projects_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) NOT VALID;
 G   ALTER TABLE ONLY public.partners_projects DROP CONSTRAINT projects_fk;
       public          postgres    false    221    219    3211            !   \   x�3�
���/K-��SpO�/JO�2��zs$%$�)8�%�$g&rqF�:r:��$��%"IrFEys:%&%�Ł�2�b���� �=�      "   C   x�3�(��N��4�2��M-I�4�2��)MOM�K�LT�J,�,�N�4�2�*0�2��2����� �k!      $   �  x�URMo�0=��?P��IoI�RQ�9�����ـ���L�Ћ=~~~�y���M�~��}k,���̚0��m�!����4#�g�#Y�p�E��dF�ovUd�.�C��1o1�(�wT�5[�m3�Ϯ%n��c�]<SZ�G3��
3�-�ԑ"�J)���g4�lz4�WrH���Q������M0,���.��qcTm�Zyo�f6��;K�<�x/;GB?��lؽ2���ۣŋez�@���/x�ћP�]��C��vB^�Vo�����-��G~r��*O��(!Ԋ����׀�}���������4xl���<������S�;M\WN.=ci�/�H�-9Nسm?�����U���n�h�m��%I���      #   �   x�mO��@�w�p��y{q�`L@ ��ò�1_�1w<���|7�lq�G��a%j4�H��������j*S��TE���Qp�.	����UF�GGԢ���,vm(��o�S7��`G�FK�u�aGlu*C�@&L{[�p�V�3u����/j�p.�Y�d�(�s�w
Z[�)q�'��=U}'ϭ�      %   �   x�=�=O�0Eg�_��~��a�XZ��r �G���_��J����{�`/q�����j�^
U�����6n�}��y�&����Y����'֩�Bہ�`Q*4��~_�o�������ѨJˎӘs�T������0p�$z�a�5m��3�y�ŠQZ��)-m/5n{n�-t�B@�9d���-�;�la��@�c\���ߐ��^�6 �a��R��~�1�}'�j�qh$��5Qu      &   .   x�34�4��4� �朆\f�&\�@�	�mdiC ���� �|�      '   �   x�]��
�0E�3_�����R7.Z�.JaHa"�4#Ӹ��!ں��pf��H�gV:[�cH��Z�QD��ɞ�(Ϣ;8��"/��>�Z��(M��鋪y9n����5\k���]�JW�ɸ��n��o��N      (   �  x�M�Ao�0���_���X�Brd�*�P��]UZ��)���+����&	��.�͛�F
��ixK��r����þ�';!/�6J�4�DQf���@@�v�|&�9���G�v����h��tH���"� �B�le7�iE<��ȷhxi���̈́I*n&TdH[��#5}�Z��C���]yG�=Q�獜5�[i2[�*@f��X
G�r\� <>������B(�@֝h��Xd\�W��
�F?���������霵[���Q�l�yLBe�wO͉x��;�v�^��4�ws�I%B.��h+�6��=:"��O������|�.kN���S�9�R.��a�OY��������R������.��g�������g��َe�t�5ߏ{�.s����B�Y��*s��7���'c�?�?�+     