package com.fsck.k9.mail;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectionSecurity {
    public static final /* synthetic */ ConnectionSecurity[] $VALUES;
    public static final ConnectionSecurity NONE;
    public static final ConnectionSecurity SSL_TLS_REQUIRED;
    public static final ConnectionSecurity STARTTLS_REQUIRED;

    static {
        ConnectionSecurity connectionSecurity = new ConnectionSecurity("NONE", 0);
        NONE = connectionSecurity;
        ConnectionSecurity connectionSecurity2 = new ConnectionSecurity("STARTTLS_REQUIRED", 1);
        STARTTLS_REQUIRED = connectionSecurity2;
        ConnectionSecurity connectionSecurity3 = new ConnectionSecurity("SSL_TLS_REQUIRED", 2);
        SSL_TLS_REQUIRED = connectionSecurity3;
        $VALUES = new ConnectionSecurity[]{connectionSecurity, connectionSecurity2, connectionSecurity3};
    }

    public static ConnectionSecurity valueOf(String str) {
        return (ConnectionSecurity) Enum.valueOf(ConnectionSecurity.class, str);
    }

    public static ConnectionSecurity[] values() {
        return (ConnectionSecurity[]) $VALUES.clone();
    }
}
