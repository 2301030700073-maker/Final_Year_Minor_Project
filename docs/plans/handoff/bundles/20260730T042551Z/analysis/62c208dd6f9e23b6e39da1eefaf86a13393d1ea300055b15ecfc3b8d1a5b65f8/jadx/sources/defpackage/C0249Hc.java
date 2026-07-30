package defpackage;

/* renamed from: Hc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0249Hc<T> extends AbstractC0799cF<T> {

    /* renamed from: do, reason: not valid java name */
    public final int f1362do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final T f1363do;

    public C0249Hc(T t, int i) {
        this.f1363do = t;
        this.f1362do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m854do() {
        T t = this.f1363do;
        if (!((t != null ? t.hashCode() : 0) == this.f1362do)) {
            throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.".toString());
        }
    }
}
