package app.k9mail.autodiscovery.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthenticationType {
    public static final /* synthetic */ AuthenticationType[] $VALUES;
    public static final AuthenticationType OAuth2;
    public static final AuthenticationType PasswordCleartext;
    public static final AuthenticationType PasswordEncrypted;

    static {
        AuthenticationType authenticationType = new AuthenticationType("PasswordCleartext", 0);
        PasswordCleartext = authenticationType;
        AuthenticationType authenticationType2 = new AuthenticationType("PasswordEncrypted", 1);
        PasswordEncrypted = authenticationType2;
        AuthenticationType authenticationType3 = new AuthenticationType("OAuth2", 2);
        OAuth2 = authenticationType3;
        $VALUES = new AuthenticationType[]{authenticationType, authenticationType2, authenticationType3};
    }

    public static AuthenticationType valueOf(String str) {
        return (AuthenticationType) Enum.valueOf(AuthenticationType.class, str);
    }

    public static AuthenticationType[] values() {
        return (AuthenticationType[]) $VALUES.clone();
    }
}
