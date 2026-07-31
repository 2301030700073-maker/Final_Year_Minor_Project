package net.thunderbird.feature.navigation.drawer.dropdown.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.account.avatar.Avatar;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MailDisplayAccount implements DisplayAccount {
    public final Avatar avatar;
    public final int color;
    public final String email;
    public final boolean hasAutoExpandFolder;
    public final boolean hasError;
    public final String id;
    public final String name;
    public final int starredMessageCount;
    public final int unreadMessageCount;

    public MailDisplayAccount(String str, String str2, String str3, int i, Avatar avatar, boolean z, int i2, int i3, boolean z2) {
        str.getClass();
        this.id = str;
        this.name = str2;
        this.email = str3;
        this.color = i;
        this.avatar = avatar;
        this.hasAutoExpandFolder = z;
        this.unreadMessageCount = i2;
        this.starredMessageCount = i3;
        this.hasError = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MailDisplayAccount)) {
            return false;
        }
        MailDisplayAccount mailDisplayAccount = (MailDisplayAccount) obj;
        return Intrinsics.areEqual(this.id, mailDisplayAccount.id) && this.name.equals(mailDisplayAccount.name) && this.email.equals(mailDisplayAccount.email) && this.color == mailDisplayAccount.color && this.avatar.equals(mailDisplayAccount.avatar) && this.hasAutoExpandFolder == mailDisplayAccount.hasAutoExpandFolder && this.unreadMessageCount == mailDisplayAccount.unreadMessageCount && this.starredMessageCount == mailDisplayAccount.starredMessageCount && this.hasError == mailDisplayAccount.hasError;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final boolean getHasError() {
        return this.hasError;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final String getId() {
        return this.id;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final int getStarredMessageCount() {
        return this.starredMessageCount;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final int getUnreadMessageCount() {
        return this.unreadMessageCount;
    }

    public final int hashCode() {
        return ((((((((this.avatar.hashCode() + ((Modifier.CC.m(Modifier.CC.m(this.id.hashCode() * 31, this.name, 31), this.email, 31) + this.color) * 31)) * 31) + (this.hasAutoExpandFolder ? 1231 : 1237)) * 31) + this.unreadMessageCount) * 31) + this.starredMessageCount) * 31) + (this.hasError ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("MailDisplayAccount(id=", this.id, ", name=", this.name, ", email=");
        m.append(this.email);
        m.append(", color=");
        m.append(this.color);
        m.append(", avatar=");
        m.append(this.avatar);
        m.append(", hasAutoExpandFolder=");
        m.append(this.hasAutoExpandFolder);
        m.append(", unreadMessageCount=");
        Modifier.CC.m(m, this.unreadMessageCount, ", starredMessageCount=", this.starredMessageCount, ", hasError=");
        return CameraDevices$CC.m(")", m, this.hasError);
    }
}
