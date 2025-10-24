ALTER TABLE "public"."Scenario" DROP COLUMN "dateContained",
ADD COLUMN "dateContained" text   ,
DROP COLUMN "dateHospitalsOverCapacity",
ADD COLUMN "dateHospitalsOverCapacity" text   ,
DROP COLUMN "dateICUOverCapacity",
ADD COLUMN "dateICUOverCapacity" text   ;
