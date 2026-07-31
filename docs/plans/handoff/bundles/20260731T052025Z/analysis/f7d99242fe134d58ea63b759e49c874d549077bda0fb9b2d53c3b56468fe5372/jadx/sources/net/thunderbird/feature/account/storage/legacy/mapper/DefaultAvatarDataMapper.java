package net.thunderbird.feature.account.storage.legacy.mapper;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import net.thunderbird.feature.account.avatar.Avatar;
import net.thunderbird.feature.account.storage.profile.AvatarDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAvatarDataMapper {
    public final Object toDomain(Object obj) {
        AvatarDto avatarDto = (AvatarDto) obj;
        avatarDto.getClass();
        int ordinal = avatarDto.avatarType.ordinal();
        if (ordinal == 0) {
            String str = avatarDto.avatarMonogram;
            return new Avatar.Monogram(str != null ? str : "XX");
        }
        if (ordinal == 1) {
            String str2 = avatarDto.avatarImageUri;
            return (str2 == null || str2.length() == 0) ? new Avatar.Monogram("XX") : new Avatar.Image(str2);
        }
        if (ordinal == 2) {
            String str3 = avatarDto.avatarIconName;
            return (str3 == null || str3.length() == 0) ? new Avatar.Monogram("XX") : new Avatar.Icon(str3);
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }
}
