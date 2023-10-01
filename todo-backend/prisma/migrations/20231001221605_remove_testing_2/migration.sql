/*
  Warnings:

  - You are about to drop the column `teste` on the `Todo` table. All the data in the column will be lost.
  - Added the required column `title` to the `Todo` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Todo` DROP COLUMN `teste`,
    ADD COLUMN `title` VARCHAR(191) NOT NULL;
