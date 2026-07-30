package defpackage;

/* renamed from: Le, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0339Le<T> implements InterfaceC3597qy<T> {

    /* renamed from: if, reason: not valid java name */
    public static final Object f1971if = new Object();

    /* renamed from: do, reason: not valid java name */
    public volatile Object f1972do = f1971if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile InterfaceC3597qy<T> f1973do;

    public C0339Le(C4052yi c4052yi) {
        this.f1973do = c4052yi;
    }

    @Override // defpackage.InterfaceC3597qy
    public final T get() {
        T t = (T) this.f1972do;
        Object obj = f1971if;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.f1972do;
                if (t == obj) {
                    t = this.f1973do.get();
                    Object obj2 = this.f1972do;
                    if ((obj2 != obj) && obj2 != t) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + t + ". This is likely due to a circular dependency.");
                    }
                    this.f1972do = t;
                    this.f1973do = null;
                }
            }
        }
        return t;
    }
}
