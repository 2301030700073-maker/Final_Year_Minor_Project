package net.thunderbird.feature.account.storage.profile;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProfileDto {
    public final AvatarDto avatar;
    public final int color;
    public final AccountId id;
    public final String name;

    public ProfileDto(AccountId accountId, String str, int i, AvatarDto avatarDto) {
        accountId.getClass();
        avatarDto.getClass();
        this.id = accountId;
        this.name = str;
        this.color = i;
        this.avatar = avatarDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileDto)) {
            return false;
        }
        ProfileDto profileDto = (ProfileDto) obj;
        return Intrinsics.areEqual(this.id, profileDto.id) && this.name.equals(profileDto.name) && this.color == profileDto.color && Intrinsics.areEqual(this.avatar, profileDto.avatar);
    }

    public final int hashCode() {
        return this.avatar.hashCode() + ((Modifier.CC.m(this.id.value.hashCode() * 31, this.name, 31) + this.color) * 31);
    }

    public final String toString() {
        return "ProfileDto(id=" + this.id + ", name=" + this.name + ", color=" + this.color + ", avatar=" + this.avatar + ")";
    }
}
