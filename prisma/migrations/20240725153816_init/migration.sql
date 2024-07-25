-- CreateTable
CREATE TABLE "VoucherTable" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "VoucherTable_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UVCTable" (
    "id" TEXT NOT NULL,
    "voucherId" TEXT NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "code" TEXT NOT NULL,

    CONSTRAINT "UVCTable_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "UVCTable_code_key" ON "UVCTable"("code");

-- AddForeignKey
ALTER TABLE "UVCTable" ADD CONSTRAINT "UVCTable_voucherId_fkey" FOREIGN KEY ("voucherId") REFERENCES "VoucherTable"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
