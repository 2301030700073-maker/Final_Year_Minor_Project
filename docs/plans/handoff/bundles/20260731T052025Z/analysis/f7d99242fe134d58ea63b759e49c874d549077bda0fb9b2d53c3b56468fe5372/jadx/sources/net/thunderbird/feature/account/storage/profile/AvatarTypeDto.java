package net.thunderbird.feature.account.storage.profile;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AvatarTypeDto {
    public static final /* synthetic */ AvatarTypeDto[] $VALUES;
    public static final AvatarTypeDto ICON;
    public static final AvatarTypeDto IMAGE;
    public static final AvatarTypeDto MONOGRAM;

    static {
        AvatarTypeDto avatarTypeDto = new AvatarTypeDto("MONOGRAM", 0);
        MONOGRAM = avatarTypeDto;
        AvatarTypeDto avatarTypeDto2 = new AvatarTypeDto("IMAGE", 1);
        IMAGE = avatarTypeDto2;
        AvatarTypeDto avatarTypeDto3 = new AvatarTypeDto("ICON", 2);
        ICON = avatarTypeDto3;
        $VALUES = new AvatarTypeDto[]{avatarTypeDto, avatarTypeDto2, avatarTypeDto3};
    }

    public static AvatarTypeDto valueOf(String str) {
        return (AvatarTypeDto) Enum.valueOf(AvatarTypeDto.class, str);
    }

    public static AvatarTypeDto[] values() {
        return (AvatarTypeDto[]) $VALUES.clone();
    }
}
