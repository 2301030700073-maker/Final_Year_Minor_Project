package net.thunderbird.feature.account.profile;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.Avatar;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountProfile {
    public final Avatar avatar;
    public final int color;
    public final AccountId id;
    public final String name;

    public AccountProfile(AccountId accountId, String str, int i, Avatar avatar) {
        accountId.getClass();
        this.id = accountId;
        this.name = str;
        this.color = i;
        this.avatar = avatar;
    }

    public static AccountProfile copy$default(AccountProfile accountProfile, String str, int i, Avatar avatar, int i2) {
        AccountId accountId = accountProfile.id;
        if ((i2 & 2) != 0) {
            str = accountProfile.name;
        }
        if ((i2 & 4) != 0) {
            i = accountProfile.color;
        }
        if ((i2 & 8) != 0) {
            avatar = accountProfile.avatar;
        }
        accountProfile.getClass();
        accountId.getClass();
        str.getClass();
        avatar.getClass();
        return new AccountProfile(accountId, str, i, avatar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountProfile)) {
            return false;
        }
        AccountProfile accountProfile = (AccountProfile) obj;
        return Intrinsics.areEqual(this.id, accountProfile.id) && this.name.equals(accountProfile.name) && this.color == accountProfile.color && this.avatar.equals(accountProfile.avatar);
    }

    public final int hashCode() {
        return this.avatar.hashCode() + ((Modifier.CC.m(this.id.value.hashCode() * 31, this.name, 31) + this.color) * 31);
    }

    public final String toString() {
        return "AccountProfile(id=" + this.id + ", name=" + this.name + ", color=" + this.color + ", avatar=" + this.avatar + ")";
    }
}
