package c.b.b;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: c.b.b.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0486x {

    /* renamed from: b, reason: collision with root package name */
    public static volatile C0486x f3221b;

    /* renamed from: c, reason: collision with root package name */
    public static final C0486x f3222c;

    /* renamed from: a, reason: collision with root package name */
    public final Map f3223a;

    static {
        try {
            Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
        }
        f3222c = new C0486x(true);
    }

    public C0486x() {
        this.f3223a = new HashMap();
    }

    public static C0486x a() {
        C0486x c0486x = f3221b;
        if (c0486x == null) {
            synchronized (C0486x.class) {
                c0486x = f3221b;
                if (c0486x == null) {
                    Class cls = C0482v.f3218a;
                    if (cls != null) {
                        try {
                            c0486x = (C0486x) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                        f3221b = c0486x;
                    }
                    c0486x = f3222c;
                    f3221b = c0486x;
                }
            }
        }
        return c0486x;
    }

    public C0486x(boolean z) {
        this.f3223a = Collections.emptyMap();
    }
}
