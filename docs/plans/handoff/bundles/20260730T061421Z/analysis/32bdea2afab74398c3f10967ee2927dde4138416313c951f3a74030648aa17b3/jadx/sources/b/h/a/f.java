package b.h.a;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class f {
    public static final ThreadLocal g = new ThreadLocal();

    /* renamed from: d, reason: collision with root package name */
    public AbstractC0093c f817d;

    /* renamed from: a, reason: collision with root package name */
    public final b.d.n f814a = new b.d.n();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f815b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final C0091a f816c = new C0091a(this);
    public long e = 0;
    public boolean f = false;

    public static f a() {
        if (g.get() == null) {
            g.set(new f());
        }
        return (f) g.get();
    }
}
