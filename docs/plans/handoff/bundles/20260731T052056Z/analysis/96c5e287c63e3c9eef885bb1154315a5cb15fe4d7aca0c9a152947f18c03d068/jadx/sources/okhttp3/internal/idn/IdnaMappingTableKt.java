package okhttp3.internal.idn;

import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class IdnaMappingTableKt {
    public static final ByteString.Companion IDNA_MAPPING_TABLE = new ByteString.Companion(5);

    public static final int read14BitInt(int i, String str) {
        char charAt = str.charAt(i);
        return (charAt << 7) + str.charAt(i + 1);
    }
}
