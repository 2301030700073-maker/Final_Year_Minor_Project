package c.b.b;

/* renamed from: c.b.b.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0447d {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f3177a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f3178b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f3177a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f3178b = cls2 != null;
    }

    public static boolean a() {
        return (f3177a == null || f3178b) ? false : true;
    }
}
