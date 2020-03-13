CREATE TABLE public.player
(
    player_id bigint NOT NULL,
    name character varying(30),
    surname character varying(30),
    jersey_number integer,
    height character varying(6),
    birth_date character varying(10),
    hate_count bigint,
    respect_count bigint,
    follow_count integer
);

ALTER TABLE public.player
    OWNER to koder;