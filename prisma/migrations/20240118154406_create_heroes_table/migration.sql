-- CreateTable
CREATE TABLE `heroes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `role` VARCHAR(100) NOT NULL,
    `primary_type` VARCHAR(100) NOT NULL,
    `secondary_type` VARCHAR(100) NOT NULL,
    `image` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE InnoDB;
