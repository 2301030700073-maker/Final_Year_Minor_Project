package app.k9mail.feature.account.common.domain.entity;

import androidx.camera.core.impl.Config;
import com.fsck.k9.mail.ServerSettings;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountState {
    public final AuthorizationState authorizationState;
    public final AccountDisplayOptions displayOptions;
    public final String emailAddress;
    public final ServerSettings incomingServerSettings;
    public final ServerSettings outgoingServerSettings;
    public final SpecialFolderSettings specialFolderSettings;
    public final AccountSyncOptions syncOptions;
    public final String uuid;

    public /* synthetic */ AccountState(String str, String str2, ServerSettings serverSettings, ServerSettings serverSettings2, AuthorizationState authorizationState, AccountDisplayOptions accountDisplayOptions, int i) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : serverSettings, (i & 8) != 0 ? null : serverSettings2, (i & 16) != 0 ? null : authorizationState, null, (i & 64) != 0 ? null : accountDisplayOptions, null);
    }

    public static AccountState copy$default(AccountState accountState, ServerSettings serverSettings, ServerSettings serverSettings2, AuthorizationState authorizationState, SpecialFolderSettings specialFolderSettings, AccountDisplayOptions accountDisplayOptions, AccountSyncOptions accountSyncOptions, int i) {
        String str = accountState.uuid;
        String str2 = accountState.emailAddress;
        if ((i & 4) != 0) {
            serverSettings = accountState.incomingServerSettings;
        }
        ServerSettings serverSettings3 = serverSettings;
        if ((i & 8) != 0) {
            serverSettings2 = accountState.outgoingServerSettings;
        }
        ServerSettings serverSettings4 = serverSettings2;
        if ((i & 16) != 0) {
            authorizationState = accountState.authorizationState;
        }
        AuthorizationState authorizationState2 = authorizationState;
        if ((i & 32) != 0) {
            specialFolderSettings = accountState.specialFolderSettings;
        }
        SpecialFolderSettings specialFolderSettings2 = specialFolderSettings;
        if ((i & 64) != 0) {
            accountDisplayOptions = accountState.displayOptions;
        }
        return new AccountState(str, str2, serverSettings3, serverSettings4, authorizationState2, specialFolderSettings2, accountDisplayOptions, (i & 128) != 0 ? accountState.syncOptions : accountSyncOptions);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountState)) {
            return false;
        }
        AccountState accountState = (AccountState) obj;
        return Intrinsics.areEqual(this.uuid, accountState.uuid) && Intrinsics.areEqual(this.emailAddress, accountState.emailAddress) && Intrinsics.areEqual(this.incomingServerSettings, accountState.incomingServerSettings) && Intrinsics.areEqual(this.outgoingServerSettings, accountState.outgoingServerSettings) && Intrinsics.areEqual(this.authorizationState, accountState.authorizationState) && Intrinsics.areEqual(this.specialFolderSettings, accountState.specialFolderSettings) && Intrinsics.areEqual(this.displayOptions, accountState.displayOptions) && Intrinsics.areEqual(this.syncOptions, accountState.syncOptions);
    }

    public final int hashCode() {
        String str = this.uuid;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.emailAddress;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        ServerSettings serverSettings = this.incomingServerSettings;
        int hashCode3 = (hashCode2 + (serverSettings == null ? 0 : serverSettings.hashCode())) * 31;
        ServerSettings serverSettings2 = this.outgoingServerSettings;
        int hashCode4 = (hashCode3 + (serverSettings2 == null ? 0 : serverSettings2.hashCode())) * 31;
        AuthorizationState authorizationState = this.authorizationState;
        int hashCode5 = (hashCode4 + (authorizationState == null ? 0 : authorizationState.hashCode())) * 31;
        SpecialFolderSettings specialFolderSettings = this.specialFolderSettings;
        int hashCode6 = (hashCode5 + (specialFolderSettings == null ? 0 : specialFolderSettings.hashCode())) * 31;
        AccountDisplayOptions accountDisplayOptions = this.displayOptions;
        int hashCode7 = (hashCode6 + (accountDisplayOptions == null ? 0 : accountDisplayOptions.hashCode())) * 31;
        AccountSyncOptions accountSyncOptions = this.syncOptions;
        return hashCode7 + (accountSyncOptions != null ? accountSyncOptions.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("AccountState(uuid=", this.uuid, ", emailAddress=", this.emailAddress, ", incomingServerSettings=");
        m.append(this.incomingServerSettings);
        m.append(", outgoingServerSettings=");
        m.append(this.outgoingServerSettings);
        m.append(", authorizationState=");
        m.append(this.authorizationState);
        m.append(", specialFolderSettings=");
        m.append(this.specialFolderSettings);
        m.append(", displayOptions=");
        m.append(this.displayOptions);
        m.append(", syncOptions=");
        m.append(this.syncOptions);
        m.append(")");
        return m.toString();
    }

    public AccountState(String str, String str2, ServerSettings serverSettings, ServerSettings serverSettings2, AuthorizationState authorizationState, SpecialFolderSettings specialFolderSettings, AccountDisplayOptions accountDisplayOptions, AccountSyncOptions accountSyncOptions) {
        this.uuid = str;
        this.emailAddress = str2;
        this.incomingServerSettings = serverSettings;
        this.outgoingServerSettings = serverSettings2;
        this.authorizationState = authorizationState;
        this.specialFolderSettings = specialFolderSettings;
        this.displayOptions = accountDisplayOptions;
        this.syncOptions = accountSyncOptions;
    }
}
