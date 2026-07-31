package org.apache.james.mime4j;

import java.nio.charset.Charset;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Charsets {
    public static final Charset DEFAULT_CHARSET;
    public static final Charset ISO_8859_1;
    public static final Charset US_ASCII;
    public static final Charset UTF_8;

    static {
        Charset forName = Charset.forName("US-ASCII");
        US_ASCII = forName;
        ISO_8859_1 = Charset.forName("ISO-8859-1");
        UTF_8 = Charset.forName("UTF-8");
        DEFAULT_CHARSET = forName;
    }
}
