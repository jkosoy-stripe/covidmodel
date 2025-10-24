CREATE TABLE "public"."User" (
"createdAt" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,"email" text  NOT NULL ,"id" SERIAL,"name" text   ,
    PRIMARY KEY ("id"));

CREATE UNIQUE INDEX "User.email" ON "public"."User"("email");
