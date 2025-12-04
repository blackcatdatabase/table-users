<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\Users\Dto;

/**
 * Simple immutable DTO with public readonly properties.
 * - No logic; just a data carrier.
 * - Strong types enforce the contract across layers.
 */
final class UserDto implements \JsonSerializable {
    public function __construct(
        public readonly int $id,
        #[\SensitiveParameter] public readonly ?string $emailHash,
        public readonly ?string $emailHashKeyVersion,
        #[\SensitiveParameter] public readonly string $passwordHash,
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
        public readonly int $version,
        public readonly ?\DateTimeImmutable $deletedAt,
        public readonly string $actorRole
    ) {}

    /** Suitable for serialization/logging (without large blobs). */
    public function toArray(): array {
        return get_object_vars($this);
    }

    /** toArray() without null values - for clean logging/diffs. */
    public function toArrayNonNull(): array {
        return array_filter(get_object_vars($this), static fn($v) => $v !== null);
    }

    public function jsonSerialize(): array {
       $a = $this->toArray();
       foreach ($a as $k => $v) {
           if ($v instanceof \DateTimeInterface) {
               // ISO-8601 with a timezone; switch to 'Y-m-d H:i:s.u' if needed
               $a[$k] = $v->format(\DateTimeInterface::ATOM);
           }
       }
       return $a;
   }
}
