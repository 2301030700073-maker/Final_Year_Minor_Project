package kotlin.text;

import java.nio.charset.Charset;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Charsets {
    public static final Charset ISO_8859_1;
    public static final Charset US_ASCII;
    public static final Charset UTF_8;

    static {
        Charset forName = Charset.forName("UTF-8");
        forName.getClass();
        UTF_8 = forName;
        Charset.forName("UTF-16").getClass();
        Charset.forName("UTF-16BE").getClass();
        Charset.forName("UTF-16LE").getClass();
        Charset forName2 = Charset.forName("US-ASCII");
        forName2.getClass();
        US_ASCII = forName2;
        Charset forName3 = Charset.forName("ISO-8859-1");
        forName3.getClass();
        ISO_8859_1 = forName3;
    }
}
