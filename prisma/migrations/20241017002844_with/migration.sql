/*
  Warnings:

  - The primary key for the `ApprovalStatus` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `ApprovalStatus` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `status` column on the `ApprovalStatus` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Item` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `brand` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `deviceCondition` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `eWasteType` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `forSale` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `height` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `isSold` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `model` on the `Item` table. All the data in the column will be lost.
  - You are about to drop the column `weight` on the `Item` table. All the data in the column will be lost.
  - The `id` column on the `Item` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Tag` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Tag` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `User` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to drop the `_ApprovalStatusItems` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[username]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `itemId` to the `ApprovalStatus` table without a default value. This is not possible if the table is not empty.
  - Added the required column `isForDonation` to the `Item` table without a default value. This is not possible if the table is not empty.
  - Added the required column `isForSale` to the `Item` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Item` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `A` on the `_ItemTags` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `B` on the `_ItemTags` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "Status" AS ENUM ('APPROVED', 'DISAPPROVED', 'IN_REVIEW', 'COUNTERED');

-- DropForeignKey
ALTER TABLE "Item" DROP CONSTRAINT "Item_userId_fkey";

-- DropForeignKey
ALTER TABLE "_ApprovalStatusItems" DROP CONSTRAINT "_ApprovalStatusItems_A_fkey";

-- DropForeignKey
ALTER TABLE "_ApprovalStatusItems" DROP CONSTRAINT "_ApprovalStatusItems_B_fkey";

-- DropForeignKey
ALTER TABLE "_ItemTags" DROP CONSTRAINT "_ItemTags_A_fkey";

-- DropForeignKey
ALTER TABLE "_ItemTags" DROP CONSTRAINT "_ItemTags_B_fkey";

-- AlterTable
ALTER TABLE "ApprovalStatus" DROP CONSTRAINT "ApprovalStatus_pkey",
ADD COLUMN     "isSold" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "itemId" INTEGER NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "status",
ADD COLUMN     "status" "Status" NOT NULL DEFAULT 'IN_REVIEW',
ADD CONSTRAINT "ApprovalStatus_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Item" DROP CONSTRAINT "Item_pkey",
DROP COLUMN "brand",
DROP COLUMN "description",
DROP COLUMN "deviceCondition",
DROP COLUMN "eWasteType",
DROP COLUMN "forSale",
DROP COLUMN "height",
DROP COLUMN "isSold",
DROP COLUMN "model",
DROP COLUMN "weight",
ADD COLUMN     "isForDonation" BOOLEAN NOT NULL,
ADD COLUMN     "isForSale" BOOLEAN NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Item_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Tag" DROP CONSTRAINT "Tag_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Tag_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ALTER COLUMN "username" DROP DEFAULT,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "_ItemTags" DROP COLUMN "A",
ADD COLUMN     "A" INTEGER NOT NULL,
DROP COLUMN "B",
ADD COLUMN     "B" INTEGER NOT NULL;

-- DropTable
DROP TABLE "_ApprovalStatusItems";

-- CreateTable
CREATE TABLE "ItemDetails" (
    "id" SERIAL NOT NULL,
    "brand" TEXT,
    "model" TEXT,
    "description" TEXT,
    "weight" DOUBLE PRECISION,
    "height" DOUBLE PRECISION,
    "eWasteType" TEXT,
    "deviceCondition" TEXT,
    "itemId" INTEGER NOT NULL,

    CONSTRAINT "ItemDetails_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ItemDetails_itemId_key" ON "ItemDetails"("itemId");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "_ItemTags_AB_unique" ON "_ItemTags"("A", "B");

-- CreateIndex
CREATE INDEX "_ItemTags_B_index" ON "_ItemTags"("B");

-- AddForeignKey
ALTER TABLE "Item" ADD CONSTRAINT "Item_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemDetails" ADD CONSTRAINT "ItemDetails_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ApprovalStatus" ADD CONSTRAINT "ApprovalStatus_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ItemTags" ADD CONSTRAINT "_ItemTags_A_fkey" FOREIGN KEY ("A") REFERENCES "Item"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ItemTags" ADD CONSTRAINT "_ItemTags_B_fkey" FOREIGN KEY ("B") REFERENCES "Tag"("id") ON DELETE CASCADE ON UPDATE CASCADE;
