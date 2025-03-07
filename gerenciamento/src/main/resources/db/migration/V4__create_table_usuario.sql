CREATE SEQUENCE SEQ_USUARIO
    START WITH 1
    INCREMENT BY 1 NOCACHE
    NOCYCLE;

CREATE TABLE TB_USUARIO (
    USUARIO_ID INTEGER DEFAULT SEQ_USUARIO.NEXTVAL NOT NULL,
    EMAIL VARCHAR2(100) NOT NULL,
    PASSWORD VARCHAR2(20) NOT NULL,
    "ROLE" VARCHAR2(100) DEFAULT 'USUARIO' NULL,
    CONSTRAINT TB_USUARIO_PK PRIMARY KEY (USUARIO_ID),
    CONSTRAINT TB_USUARIO_UNIQUE UNIQUE (EMAIL)
);
