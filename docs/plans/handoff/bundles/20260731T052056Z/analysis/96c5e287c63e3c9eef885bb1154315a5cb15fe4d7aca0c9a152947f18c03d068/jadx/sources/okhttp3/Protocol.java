package okhttp3;

import kotlin.Deprecated;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Protocol {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Protocol[] $VALUES;
    public static final Companion Companion;
    public static final Protocol H2_PRIOR_KNOWLEDGE;
    public static final Protocol HTTP_1_0;
    public static final Protocol HTTP_1_1;
    public static final Protocol HTTP_2;
    public static final Protocol HTTP_3;
    public static final Protocol QUIC;

    @Deprecated
    public static final Protocol SPDY_3;
    private final String protocol;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static Protocol get(String str) {
            Protocol protocol = Protocol.HTTP_1_0;
            if (str.equals(protocol.protocol)) {
                return protocol;
            }
            Protocol protocol2 = Protocol.HTTP_1_1;
            if (str.equals(protocol2.protocol)) {
                return protocol2;
            }
            Protocol protocol3 = Protocol.H2_PRIOR_KNOWLEDGE;
            if (str.equals(protocol3.protocol)) {
                return protocol3;
            }
            Protocol protocol4 = Protocol.HTTP_2;
            if (str.equals(protocol4.protocol)) {
                return protocol4;
            }
            Protocol protocol5 = Protocol.SPDY_3;
            if (str.equals(protocol5.protocol)) {
                return protocol5;
            }
            Protocol protocol6 = Protocol.QUIC;
            if (str.equals(protocol6.protocol)) {
                return protocol6;
            }
            Protocol protocol7 = Protocol.HTTP_3;
            if (StringsKt__StringsJVMKt.startsWith(str, protocol7.protocol, false)) {
                return protocol7;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unexpected protocol: ".concat(str));
            return null;
        }
    }

    static {
        Protocol protocol = new Protocol(0, "HTTP_1_0", "http/1.0");
        HTTP_1_0 = protocol;
        Protocol protocol2 = new Protocol(1, "HTTP_1_1", "http/1.1");
        HTTP_1_1 = protocol2;
        Protocol protocol3 = new Protocol(2, "SPDY_3", "spdy/3.1");
        SPDY_3 = protocol3;
        Protocol protocol4 = new Protocol(3, "HTTP_2", "h2");
        HTTP_2 = protocol4;
        Protocol protocol5 = new Protocol(4, "H2_PRIOR_KNOWLEDGE", "h2_prior_knowledge");
        H2_PRIOR_KNOWLEDGE = protocol5;
        Protocol protocol6 = new Protocol(5, "QUIC", "quic");
        QUIC = protocol6;
        Protocol protocol7 = new Protocol(6, "HTTP_3", "h3");
        HTTP_3 = protocol7;
        Protocol[] protocolArr = {protocol, protocol2, protocol3, protocol4, protocol5, protocol6, protocol7};
        $VALUES = protocolArr;
        $ENTRIES = new EnumEntriesList(protocolArr);
        Companion = new Companion();
    }

    public Protocol(int i, String str, String str2) {
        this.protocol = str2;
    }

    public static Protocol valueOf(String str) {
        return (Protocol) Enum.valueOf(Protocol.class, str);
    }

    public static Protocol[] values() {
        return (Protocol[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocol;
    }
}
