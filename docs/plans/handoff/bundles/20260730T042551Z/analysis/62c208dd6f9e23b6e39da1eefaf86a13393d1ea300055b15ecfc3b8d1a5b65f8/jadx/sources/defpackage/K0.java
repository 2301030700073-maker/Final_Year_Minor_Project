package defpackage;

/* loaded from: classes.dex */
public final class K0 {

    /* renamed from: do, reason: not valid java name */
    public static final Class<?> f1737do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f1738do;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f1737do = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f1738do = cls2 != null;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m1100do() {
        return (f1737do == null || f1738do) ? false : true;
    }
}
