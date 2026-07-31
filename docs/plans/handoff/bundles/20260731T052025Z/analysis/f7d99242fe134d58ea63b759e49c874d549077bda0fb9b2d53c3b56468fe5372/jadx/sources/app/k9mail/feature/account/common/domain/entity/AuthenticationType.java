package app.k9mail.feature.account.common.domain.entity;

import com.mikepenz.fastadapter.VerboseLogger;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthenticationType {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ AuthenticationType[] $VALUES;
    public static final AuthenticationType ClientCertificate;
    public static final VerboseLogger Companion;
    public static final AuthenticationType None;
    public static final AuthenticationType OAuth2;
    public static final AuthenticationType PasswordCleartext;
    public static final AuthenticationType PasswordEncrypted;
    public final boolean isPasswordRequired;
    public final boolean isUsernameRequired;

    static {
        AuthenticationType authenticationType = new AuthenticationType("None", 0, false, false);
        None = authenticationType;
        AuthenticationType authenticationType2 = new AuthenticationType("PasswordCleartext", 1, true, true);
        PasswordCleartext = authenticationType2;
        AuthenticationType authenticationType3 = new AuthenticationType("PasswordEncrypted", 2, true, true);
        PasswordEncrypted = authenticationType3;
        AuthenticationType authenticationType4 = new AuthenticationType("ClientCertificate", 3, true, false);
        ClientCertificate = authenticationType4;
        AuthenticationType authenticationType5 = new AuthenticationType("OAuth2", 4, true, false);
        OAuth2 = authenticationType5;
        AuthenticationType[] authenticationTypeArr = {authenticationType, authenticationType2, authenticationType3, authenticationType4, authenticationType5};
        $VALUES = authenticationTypeArr;
        $ENTRIES = new EnumEntriesList(authenticationTypeArr);
        Companion = new VerboseLogger();
    }

    public AuthenticationType(String str, int i, boolean z, boolean z2) {
        this.isUsernameRequired = z;
        this.isPasswordRequired = z2;
    }

    public static AuthenticationType valueOf(String str) {
        return (AuthenticationType) Enum.valueOf(AuthenticationType.class, str);
    }

    public static AuthenticationType[] values() {
        return (AuthenticationType[]) $VALUES.clone();
    }
}
