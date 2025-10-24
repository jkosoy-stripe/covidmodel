ALTER TABLE "public"."Scenario" DROP COLUMN "dateContained",
ADD COLUMN "dateContained" Decimal(65,30)   ,
DROP COLUMN "dateHospitalsOverCapacity",
ADD COLUMN "dateHospitalsOverCapacity" Decimal(65,30)   ,
DROP COLUMN "dateICUOverCapacity",
ADD COLUMN "dateICUOverCapacity" Decimal(65,30)   ;
