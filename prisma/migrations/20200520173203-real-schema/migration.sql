CREATE TABLE "public"."Series" (
"data" jsonb  NOT NULL ,"id" SERIAL,"name" text  NOT NULL ,"scenarioId" integer   ,
    PRIMARY KEY ("id"));

CREATE TABLE "public"."Scenario" (
"id" SERIAL,"locationId" integer   ,
    PRIMARY KEY ("id"));

CREATE TABLE "public"."Location" (
"id" SERIAL,"slug" text  NOT NULL ,
    PRIMARY KEY ("id"));

CREATE UNIQUE INDEX "Location.slug" ON "public"."Location"("slug");

ALTER TABLE "public"."Series" ADD FOREIGN KEY ("scenarioId")REFERENCES "public"."Scenario"("id") ON DELETE SET NULL  ON UPDATE CASCADE;

ALTER TABLE "public"."Scenario" ADD FOREIGN KEY ("locationId")REFERENCES "public"."Location"("id") ON DELETE SET NULL  ON UPDATE CASCADE;

DROP TABLE "public"."User";
