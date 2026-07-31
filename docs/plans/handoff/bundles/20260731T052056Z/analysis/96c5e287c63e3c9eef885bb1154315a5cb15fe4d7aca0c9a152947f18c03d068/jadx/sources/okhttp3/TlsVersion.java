package okhttp3;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TlsVersion {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TlsVersion[] $VALUES;
    public static final Companion Companion;
    public static final TlsVersion SSL_3_0;
    public static final TlsVersion TLS_1_0;
    public static final TlsVersion TLS_1_1;
    public static final TlsVersion TLS_1_2;
    public static final TlsVersion TLS_1_3;
    private final String javaName;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static TlsVersion forJavaName(String str) {
            str.getClass();
            int hashCode = str.hashCode();
            if (hashCode != 79201641) {
                if (hashCode != 79923350) {
                    switch (hashCode) {
                        case -503070503:
                            if (str.equals("TLSv1.1")) {
                                return TlsVersion.TLS_1_1;
                            }
                            break;
                        case -503070502:
                            if (str.equals("TLSv1.2")) {
                                return TlsVersion.TLS_1_2;
                            }
                            break;
                        case -503070501:
                            if (str.equals("TLSv1.3")) {
                                return TlsVersion.TLS_1_3;
                            }
                            break;
                    }
                } else if (str.equals("TLSv1")) {
                    return TlsVersion.TLS_1_0;
                }
            } else if (str.equals("SSLv3")) {
                return TlsVersion.SSL_3_0;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Unexpected TLS version: ".concat(str));
            return null;
        }
    }

    static {
        TlsVersion tlsVersion = new TlsVersion(0, "TLS_1_3", "TLSv1.3");
        TLS_1_3 = tlsVersion;
        TlsVersion tlsVersion2 = new TlsVersion(1, "TLS_1_2", "TLSv1.2");
        TLS_1_2 = tlsVersion2;
        TlsVersion tlsVersion3 = new TlsVersion(2, "TLS_1_1", "TLSv1.1");
        TLS_1_1 = tlsVersion3;
        TlsVersion tlsVersion4 = new TlsVersion(3, "TLS_1_0", "TLSv1");
        TLS_1_0 = tlsVersion4;
        TlsVersion tlsVersion5 = new TlsVersion(4, "SSL_3_0", "SSLv3");
        SSL_3_0 = tlsVersion5;
        TlsVersion[] tlsVersionArr = {tlsVersion, tlsVersion2, tlsVersion3, tlsVersion4, tlsVersion5};
        $VALUES = tlsVersionArr;
        $ENTRIES = new EnumEntriesList(tlsVersionArr);
        Companion = new Companion();
    }

    public TlsVersion(int i, String str, String str2) {
        this.javaName = str2;
    }

    public static TlsVersion valueOf(String str) {
        return (TlsVersion) Enum.valueOf(TlsVersion.class, str);
    }

    public static TlsVersion[] values() {
        return (TlsVersion[]) $VALUES.clone();
    }

    public final String javaName() {
        return this.javaName;
    }
}
