package defpackage;

/* loaded from: classes3.dex */
public final class JN implements MN {

    /* renamed from: if, reason: not valid java name */
    public static final Object f1627if = new Object();

    /* renamed from: do, reason: not valid java name */
    public volatile MN f1628do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Object f1629do = f1627if;

    public JN(KN kn) {
        this.f1628do = kn;
    }

    /* renamed from: do, reason: not valid java name */
    public static MN m1037do(KN kn) {
        return kn instanceof JN ? kn : new JN(kn);
    }

    @Override // defpackage.NN
    public final Object a() {
        Object obj = this.f1629do;
        Object obj2 = f1627if;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f1629do;
                if (obj == obj2) {
                    obj = this.f1628do.a();
                    Object obj3 = this.f1629do;
                    if (obj3 != obj2 && obj3 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f1629do = obj;
                    this.f1628do = null;
                }
            }
        }
        return obj;
    }
}
