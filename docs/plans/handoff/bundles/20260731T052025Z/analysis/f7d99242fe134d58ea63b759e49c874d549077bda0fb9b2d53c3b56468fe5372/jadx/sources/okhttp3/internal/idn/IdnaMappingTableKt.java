package okhttp3.internal.idn;

import com.bumptech.glide.GlideBuilder$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IdnaMappingTableKt {
    public static final GlideBuilder$1 IDNA_MAPPING_TABLE = new GlideBuilder$1();

    public static final int read14BitInt(String str, int i) {
        char charAt = str.charAt(i);
        return (charAt << 7) + str.charAt(i + 1);
    }
}
