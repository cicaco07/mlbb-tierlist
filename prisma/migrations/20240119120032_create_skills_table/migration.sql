/*
  Warnings:

  - You are about to drop the `herobasestats` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `herobasestats` DROP FOREIGN KEY `HeroBaseStats_hero_id_fkey`;

-- DropTable
DROP TABLE `herobasestats`;

-- CreateTable
CREATE TABLE `base_stats` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `base_hp` INTEGER NOT NULL,
    `base_mana` INTEGER NOT NULL,
    `base_hp_regen` VARCHAR(191) NOT NULL,
    `base_mana_regen` VARCHAR(191) NOT NULL,
    `physical_attack` INTEGER NOT NULL,
    `magic_power` VARCHAR(191) NOT NULL,
    `pyhiscal_defense` VARCHAR(191) NOT NULL,
    `magic_defense` VARCHAR(191) NOT NULL,
    `attack_speed` VARCHAR(191) NOT NULL,
    `movement_speed` INTEGER NOT NULL,
    `rasio_attack_speed` VARCHAR(191) NOT NULL,
    `hero_id` INTEGER NOT NULL,

    UNIQUE INDEX `base_stats_hero_id_key`(`hero_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `skills` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `skill_number` INTEGER NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `type` VARCHAR(100) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `active_description` VARCHAR(191) NOT NULL,
    `passive_description` VARCHAR(191) NOT NULL,
    `hero_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `base_stats` ADD CONSTRAINT `base_stats_hero_id_fkey` FOREIGN KEY (`hero_id`) REFERENCES `heroes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
