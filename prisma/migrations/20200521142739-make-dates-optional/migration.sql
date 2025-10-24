ALTER TABLE "public"."Scenario" ALTER COLUMN "dateContained" DROP NOT NULL,
ALTER COLUMN "dateHospitalsOverCapacity" DROP NOT NULL,
ALTER COLUMN "dateICUOverCapacity" DROP NOT NULL;
