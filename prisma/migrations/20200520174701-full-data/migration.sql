DROP INDEX "public"."Location.slug";

CREATE TABLE "public"."Parameter" (
"citations" text []  ,"description" text  NOT NULL ,"id" SERIAL,"locationId" integer   ,"name" text  NOT NULL ,"type" text  NOT NULL ,"value" Decimal(65,30)  NOT NULL ,
    PRIMARY KEY ("id"));

ALTER TABLE "public"."Location" DROP COLUMN "slug",
ADD COLUMN "dateModelRun" text  NOT NULL ,
ADD COLUMN "icuBeds" integer  NOT NULL ,
ADD COLUMN "importtime" Decimal(65,30)  NOT NULL ,
ADD COLUMN "mostRecentDistancingDate" text  NOT NULL ,
ADD COLUMN "name" text  NOT NULL ,
ADD COLUMN "population" integer  NOT NULL ,
ADD COLUMN "r0" Decimal(65,30)  NOT NULL ,
ADD COLUMN "ventilators" integer  NOT NULL ;

ALTER TABLE "public"."Scenario" ADD COLUMN "dateContained" text  NOT NULL ,
ADD COLUMN "dateHospitalsOverCapacity" text  NOT NULL ,
ADD COLUMN "dateICUOverCapacity" text  NOT NULL ,
ADD COLUMN "distancingDays" integer  NOT NULL ,
ADD COLUMN "distancingLevel" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fatalityRate" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fatalityRatePCR" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fatalityRateSymptomatic" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionDeathOfHospitalizedOrICU" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionHospitalizedInICU" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfDeathInICU" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfDeathsReported" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfHospitalizationsReported" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfInfectionsPCRConfirmed" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfPCRHospitalized" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfPCRHospitalizedOrICU" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfSymptomaticHospitalized" Decimal(65,30)  NOT NULL ,
ADD COLUMN "fractionOfSymptomaticHospitalizedOrICU" Decimal(65,30)  NOT NULL ,
ADD COLUMN "name" text  NOT NULL ,
ADD COLUMN "totalInfectedFraction" Decimal(65,30)  NOT NULL ;

CREATE UNIQUE INDEX "Location.name" ON "public"."Location"("name");

ALTER TABLE "public"."Parameter" ADD FOREIGN KEY ("locationId")REFERENCES "public"."Location"("id") ON DELETE SET NULL  ON UPDATE CASCADE;
