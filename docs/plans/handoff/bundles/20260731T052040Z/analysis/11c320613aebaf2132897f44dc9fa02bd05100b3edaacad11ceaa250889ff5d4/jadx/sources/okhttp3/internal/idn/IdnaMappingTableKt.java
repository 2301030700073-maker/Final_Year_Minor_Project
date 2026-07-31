package okhttp3.internal.idn;

import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class IdnaMappingTableKt {
    public static final Path.Companion IDNA_MAPPING_TABLE = new Path.Companion(4);

    public static final int read14BitInt(int i, String str) {
        char charAt = str.charAt(i);
        return (charAt << 7) + str.charAt(i + 1);
    }
}
