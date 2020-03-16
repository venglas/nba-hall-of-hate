CREATE TABLE public.player_comment_hate
(
    comment_id bigint NOT NULL,
    player_id bigint NOT NULL,
    author character varying NOT NULL,
    created_date date,
    content character varying(500),
    comment_like integer,
    comment_dislike integer,
    CONSTRAINT comment_id_pk PRIMARY KEY (comment_id),
    CONSTRAINT player_id_fk FOREIGN KEY (player_id)
    REFERENCES public.player (player_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE public.player_comment_hate
    OWNER to koder;