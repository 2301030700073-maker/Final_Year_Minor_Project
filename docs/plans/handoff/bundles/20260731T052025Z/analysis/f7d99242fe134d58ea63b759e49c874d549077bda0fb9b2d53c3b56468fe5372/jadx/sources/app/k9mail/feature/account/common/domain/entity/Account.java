package app.k9mail.feature.account.common.domain.entity;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.ServerSettings;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Account {
    public final String authorizationState;
    public final String emailAddress;
    public final ServerSettings incomingServerSettings;
    public final AccountOptions options;
    public final ServerSettings outgoingServerSettings;
    public final SpecialFolderSettings specialFolderSettings;
    public final String uuid;

    public Account(String str, String str2, ServerSettings serverSettings, ServerSettings serverSettings2, String str3, SpecialFolderSettings specialFolderSettings, AccountOptions accountOptions) {
        str.getClass();
        str2.getClass();
        this.uuid = str;
        this.emailAddress = str2;
        this.incomingServerSettings = serverSettings;
        this.outgoingServerSettings = serverSettings2;
        this.authorizationState = str3;
        this.specialFolderSettings = specialFolderSettings;
        this.options = accountOptions;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Account)) {
            return false;
        }
        Account account = (Account) obj;
        return Intrinsics.areEqual(this.uuid, account.uuid) && Intrinsics.areEqual(this.emailAddress, account.emailAddress) && this.incomingServerSettings.equals(account.incomingServerSettings) && this.outgoingServerSettings.equals(account.outgoingServerSettings) && Intrinsics.areEqual(this.authorizationState, account.authorizationState) && Intrinsics.areEqual(this.specialFolderSettings, account.specialFolderSettings) && this.options.equals(account.options);
    }

    public final int hashCode() {
        int hashCode = (this.outgoingServerSettings.hashCode() + ((this.incomingServerSettings.hashCode() + Modifier.CC.m(this.uuid.hashCode() * 31, this.emailAddress, 31)) * 31)) * 31;
        String str = this.authorizationState;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        SpecialFolderSettings specialFolderSettings = this.specialFolderSettings;
        return this.options.hashCode() + ((hashCode2 + (specialFolderSettings != null ? specialFolderSettings.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("Account(uuid=", this.uuid, ", emailAddress=", this.emailAddress, ", incomingServerSettings=");
        m.append(this.incomingServerSettings);
        m.append(", outgoingServerSettings=");
        m.append(this.outgoingServerSettings);
        m.append(", authorizationState=");
        m.append(this.authorizationState);
        m.append(", specialFolderSettings=");
        m.append(this.specialFolderSettings);
        m.append(", options=");
        m.append(this.options);
        m.append(")");
        return m.toString();
    }
}
