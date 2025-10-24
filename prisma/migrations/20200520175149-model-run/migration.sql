CREATE TABLE "public"."ModelRun" (
"createdAt" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,"id" SERIAL,
    PRIMARY KEY ("id"));

ALTER TABLE "public"."Location" ADD COLUMN "modelRunId" integer   ;

ALTER TABLE "public"."Location" ADD FOREIGN KEY ("modelRunId")REFERENCES "public"."ModelRun"("id") ON DELETE SET NULL  ON UPDATE CASCADE;
