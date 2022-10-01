CREATE Table "My_Albums"
(
"My_AlbumId" INT NOT NULL,
"AlbumId" INT NOT NULL,
"My_Rating" INT NULL,
"My_Notes" VARCHAR (255),
CONSTRAINT "PK_My_AlbumId" PRIMARY KEY ("My_AlbumId")
);
/*******************************************************************************
   Create Foreign Keys
*******************************************************************************/
ALTER TABLE "My_Albums" ADD CONSTRAINT "FK_AlbumId"
    FOREIGN KEY ("AlbumId") REFERENCES "Album" ("AlbumId") ON DELETE NO ACTION ON UPDATE NO ACTION;

/* Add some data to the table */
INSERT INTO "My_Albums" ("My_AlbumId", "AlbumId", "My_Rating", "My_Notes") VALUES (1, 37, 3, 'Old
and Scratched');
INSERT INTO "My_Albums" ("My_AlbumId", "AlbumId", "My_Notes") VALUES (2, 110, 'Easy Listening');
INSERT INTO "My_Albums" ("My_AlbumId", "AlbumId", "My_Notes") VALUES (3, 36, 'Easy Listening');

/* Verify that data added OK */
SELECT * FROM "My_Albums";