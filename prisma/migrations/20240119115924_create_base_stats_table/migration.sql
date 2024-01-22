-- CreateTable
CREATE TABLE `HeroBaseStats` (
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

    UNIQUE INDEX `HeroBaseStats_hero_id_key`(`hero_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `HeroBaseStats` ADD CONSTRAINT `HeroBaseStats_hero_id_fkey` FOREIGN KEY (`hero_id`) REFERENCES `heroes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
