package b.c.a.a;

/* loaded from: classes.dex */
public class a extends d {

    /* renamed from: c, reason: collision with root package name */
    public static volatile a f606c;

    /* renamed from: a, reason: collision with root package name */
    public d f607a;

    /* renamed from: b, reason: collision with root package name */
    public d f608b;

    public a() {
        c cVar = new c();
        this.f608b = cVar;
        this.f607a = cVar;
    }

    public static a b() {
        if (f606c != null) {
            return f606c;
        }
        synchronized (a.class) {
            if (f606c == null) {
                f606c = new a();
            }
        }
        return f606c;
    }

    @Override // b.c.a.a.d
    public boolean a() {
        return this.f607a.a();
    }
}
