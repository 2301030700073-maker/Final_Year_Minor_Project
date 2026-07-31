package app.k9mail.autodiscovery.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectionSecurity {
    public static final /* synthetic */ ConnectionSecurity[] $VALUES;
    public static final ConnectionSecurity StartTLS;
    public static final ConnectionSecurity TLS;

    static {
        ConnectionSecurity connectionSecurity = new ConnectionSecurity("StartTLS", 0);
        StartTLS = connectionSecurity;
        ConnectionSecurity connectionSecurity2 = new ConnectionSecurity("TLS", 1);
        TLS = connectionSecurity2;
        $VALUES = new ConnectionSecurity[]{connectionSecurity, connectionSecurity2};
    }

    public static ConnectionSecurity valueOf(String str) {
        return (ConnectionSecurity) Enum.valueOf(ConnectionSecurity.class, str);
    }

    public static ConnectionSecurity[] values() {
        return (ConnectionSecurity[]) $VALUES.clone();
    }
}
