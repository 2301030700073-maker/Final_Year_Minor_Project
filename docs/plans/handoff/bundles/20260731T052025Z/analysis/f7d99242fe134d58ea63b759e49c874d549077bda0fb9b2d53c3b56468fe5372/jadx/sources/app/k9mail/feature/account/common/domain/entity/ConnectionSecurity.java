package app.k9mail.feature.account.common.domain.entity;

import com.bumptech.glide.GlideBuilder$1;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectionSecurity {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ ConnectionSecurity[] $VALUES;
    public static final GlideBuilder$1 Companion;
    public static final ConnectionSecurity DEFAULT;
    public static final ConnectionSecurity None;
    public static final ConnectionSecurity StartTLS;
    public static final ConnectionSecurity TLS;

    static {
        ConnectionSecurity connectionSecurity = new ConnectionSecurity("None", 0);
        None = connectionSecurity;
        ConnectionSecurity connectionSecurity2 = new ConnectionSecurity("StartTLS", 1);
        StartTLS = connectionSecurity2;
        ConnectionSecurity connectionSecurity3 = new ConnectionSecurity("TLS", 2);
        TLS = connectionSecurity3;
        ConnectionSecurity[] connectionSecurityArr = {connectionSecurity, connectionSecurity2, connectionSecurity3};
        $VALUES = connectionSecurityArr;
        $ENTRIES = new EnumEntriesList(connectionSecurityArr);
        Companion = new GlideBuilder$1();
        DEFAULT = connectionSecurity3;
    }

    public static ConnectionSecurity valueOf(String str) {
        return (ConnectionSecurity) Enum.valueOf(ConnectionSecurity.class, str);
    }

    public static ConnectionSecurity[] values() {
        return (ConnectionSecurity[]) $VALUES.clone();
    }
}
