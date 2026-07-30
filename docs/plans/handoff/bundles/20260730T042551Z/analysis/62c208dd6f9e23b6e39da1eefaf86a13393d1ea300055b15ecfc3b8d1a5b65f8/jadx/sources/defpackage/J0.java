package defpackage;

/* loaded from: classes3.dex */
public final class J0 {

    /* renamed from: do, reason: not valid java name */
    public static final Class<?> f1580do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f1581do;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f1580do = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f1581do = cls2 != null;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m997do() {
        return (f1580do == null || f1581do) ? false : true;
    }
}
