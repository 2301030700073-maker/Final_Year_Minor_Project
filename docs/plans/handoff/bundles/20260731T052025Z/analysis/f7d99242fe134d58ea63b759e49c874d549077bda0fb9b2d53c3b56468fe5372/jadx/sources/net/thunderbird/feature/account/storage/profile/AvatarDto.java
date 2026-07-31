package net.thunderbird.feature.account.storage.profile;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AvatarDto {
    public final String avatarIconName;
    public final String avatarImageUri;
    public final String avatarMonogram;
    public final AvatarTypeDto avatarType;

    public AvatarDto(AvatarTypeDto avatarTypeDto, String str, String str2, String str3) {
        this.avatarType = avatarTypeDto;
        this.avatarMonogram = str;
        this.avatarImageUri = str2;
        this.avatarIconName = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarDto)) {
            return false;
        }
        AvatarDto avatarDto = (AvatarDto) obj;
        return this.avatarType == avatarDto.avatarType && Intrinsics.areEqual(this.avatarMonogram, avatarDto.avatarMonogram) && Intrinsics.areEqual(this.avatarImageUri, avatarDto.avatarImageUri) && Intrinsics.areEqual(this.avatarIconName, avatarDto.avatarIconName);
    }

    public final int hashCode() {
        int hashCode = this.avatarType.hashCode() * 31;
        String str = this.avatarMonogram;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatarImageUri;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.avatarIconName;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "AvatarDto(avatarType=" + this.avatarType + ", avatarMonogram=" + this.avatarMonogram + ", avatarImageUri=" + this.avatarImageUri + ", avatarIconName=" + this.avatarIconName + ")";
    }
}
