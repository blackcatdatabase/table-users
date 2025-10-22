<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\Users\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class UserDto {
    public function __construct(
        public readonly ?int $id,
        public readonly ?string $emailHash,
        public readonly ?string $emailHashKeyVersion,
        public readonly string $passwordHash,
        public readonly ?string $passwordAlgo,
        public readonly ?string $passwordKeyVersion,
        public readonly bool $isActive,
        public readonly bool $isLocked,
        public readonly int $failedLogins,
        public readonly bool $mustChangePassword,
        public readonly ?\DateTimeImmutable $lastLoginAt,
        public readonly ?string $lastLoginIpHash,
        public readonly ?string $lastLoginIpKeyVersion,
        public readonly \DateTimeImmutable $createdAt,
        public readonly \DateTimeImmutable $updatedAt,
        public readonly ?\DateTimeImmutable $deletedAt,
        public readonly string $actorRole
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
