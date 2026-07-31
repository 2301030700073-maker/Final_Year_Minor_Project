package net.thunderbird.feature.account.avatar.ui;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AvatarSize {
    public static final /* synthetic */ AvatarSize[] $VALUES;
    public static final AvatarSize LARGE;
    public static final AvatarSize MEDIUM;

    static {
        AvatarSize avatarSize = new AvatarSize("MEDIUM", 0);
        MEDIUM = avatarSize;
        AvatarSize avatarSize2 = new AvatarSize("LARGE", 1);
        LARGE = avatarSize2;
        $VALUES = new AvatarSize[]{avatarSize, avatarSize2};
    }

    public static AvatarSize valueOf(String str) {
        return (AvatarSize) Enum.valueOf(AvatarSize.class, str);
    }

    public static AvatarSize[] values() {
        return (AvatarSize[]) $VALUES.clone();
    }
}
