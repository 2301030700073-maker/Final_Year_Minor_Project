package kotlin.text;

import java.nio.charset.Charset;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Charsets {
    public static final Charset ISO_8859_1;
    public static final Charset UTF_16BE;
    public static final Charset UTF_16LE;
    public static final Charset UTF_8;
    public static volatile Charset utf_32be;
    public static volatile Charset utf_32le;

    static {
        Charset forName = Charset.forName("UTF-8");
        forName.getClass();
        UTF_8 = forName;
        Charset.forName("UTF-16").getClass();
        Charset forName2 = Charset.forName("UTF-16BE");
        forName2.getClass();
        UTF_16BE = forName2;
        Charset forName3 = Charset.forName("UTF-16LE");
        forName3.getClass();
        UTF_16LE = forName3;
        Charset.forName("US-ASCII").getClass();
        Charset forName4 = Charset.forName("ISO-8859-1");
        forName4.getClass();
        ISO_8859_1 = forName4;
    }
}
