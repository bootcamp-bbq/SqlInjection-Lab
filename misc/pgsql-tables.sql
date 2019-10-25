CREATE TABLE public."Product"
(
    "Id" character(120) NOT NULL,
    "Name" character(120) NOT NULL,
    "Price" character(120) NOT NULL,
    PRIMARY KEY ("Id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Product"
    OWNER to fbuueadldkvlca;


INSERT INTO "Product"
(
    "Id",
    "Name",
    "Price"
)
VALUES
(
    '1',
    'Hammer',
    '12.3'
);

INSERT INTO "Product"
(
    "Id",
    "Name",
    "Price"
)
VALUES
(
    '2',
    'Driver-Drills',
    '16.84'
);

INSERT INTO "Product"
(
    "Id",
    "Name",
    "Price"
)
VALUES
(
    '3',
    'Hammer Drills',
    '22.3'
);

INSERT INTO "Product"
(
    "Id",
    "Name",
    "Price"
)
VALUES
(
    '4',
    'Rotary Drills',
    '109.95'
);




CREATE TABLE public."Users"
(
    "Id" character(120),
    "Name" character(120),
    "Password" character(120)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."Users"
    OWNER to fbuueadldkvlca;


INSERT INTO "Users"
(
    "Id",
    "Name",
    "Password"
)
VALUES
(
    '1',
    'admin',
    'adminpassword'
)