package defpackage;

/* renamed from: Me, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0360Me<T> implements InterfaceC3597qy<T> {

    /* renamed from: if, reason: not valid java name */
    public static final Object f2218if = new Object();

    /* renamed from: do, reason: not valid java name */
    public volatile Object f2219do = f2218if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile InterfaceC3597qy<T> f2220do;

    public C0360Me(InterfaceC3933wh interfaceC3933wh) {
        this.f2220do = interfaceC3933wh;
    }

    /* renamed from: do, reason: not valid java name */
    public static InterfaceC3597qy m1444do(InterfaceC3933wh interfaceC3933wh) {
        return interfaceC3933wh instanceof C0360Me ? interfaceC3933wh : new C0360Me(interfaceC3933wh);
    }

    @Override // defpackage.InterfaceC3597qy
    public final T get() {
        T t = (T) this.f2219do;
        Object obj = f2218if;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.f2219do;
                if (t == obj) {
                    t = this.f2220do.get();
                    Object obj2 = this.f2219do;
                    if ((obj2 != obj) && obj2 != t) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + t + ". This is likely due to a circular dependency.");
                    }
                    this.f2219do = t;
                    this.f2220do = null;
                }
            }
        }
        return t;
    }
}
