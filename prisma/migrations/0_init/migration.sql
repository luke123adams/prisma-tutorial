-- CreateTable
CREATE TABLE "first_names" (
    "first_name_id" SERIAL NOT NULL,
    "gender" TEXT,
    "race_id" INTEGER,
    "name" TEXT,

    CONSTRAINT "first_names_pkey" PRIMARY KEY ("first_name_id")
);

-- CreateTable
CREATE TABLE "races" (
    "race_id" SERIAL NOT NULL,
    "name" TEXT,

    CONSTRAINT "races_pkey" PRIMARY KEY ("race_id")
);

-- CreateTable
CREATE TABLE "second_names" (
    "second_name_id" SERIAL NOT NULL,
    "race_id" INTEGER,
    "name" TEXT,

    CONSTRAINT "second_names_pkey" PRIMARY KEY ("second_name_id")
);

-- AddForeignKey
ALTER TABLE "first_names" ADD CONSTRAINT "first_names_race_id_fkey" FOREIGN KEY ("race_id") REFERENCES "races"("race_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "second_names" ADD CONSTRAINT "second_names_race_id_fkey" FOREIGN KEY ("race_id") REFERENCES "races"("race_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

