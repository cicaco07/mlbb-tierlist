-- CreateTable
CREATE TABLE `skillsdetail` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `level` VARCHAR(191) NOT NULL,
    `mana_cost` VARCHAR(191) NOT NULL,
    `energy_cost` VARCHAR(191) NOT NULL,
    `spell_vamp_ratio` VARCHAR(191) NOT NULL,
    `hp_regen` VARCHAR(191) NOT NULL,
    `base_damage` VARCHAR(191) NOT NULL,
    `minimum_damage` VARCHAR(191) NOT NULL,
    `passive_damage` VARCHAR(191) NOT NULL,
    `cooldown` DECIMAL(65, 30) NOT NULL,
    `skills_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `skills` ADD CONSTRAINT `skills_hero_id_fkey` FOREIGN KEY (`hero_id`) REFERENCES `heroes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `skillsdetail` ADD CONSTRAINT `skillsdetail_skills_id_fkey` FOREIGN KEY (`skills_id`) REFERENCES `skills`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
