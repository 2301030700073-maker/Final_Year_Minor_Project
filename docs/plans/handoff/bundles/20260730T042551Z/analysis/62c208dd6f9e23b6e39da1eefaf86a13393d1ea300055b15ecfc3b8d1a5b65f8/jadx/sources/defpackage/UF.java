package defpackage;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class UF<T> implements SF<T> {

    /* renamed from: do, reason: not valid java name */
    public volatile SF<T> f3853do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public T f3854do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile boolean f3855do;

    public UF(SF<T> sf) {
        this.f3853do = sf;
    }

    @Override // defpackage.SF
    public final T get() {
        if (!this.f3855do) {
            synchronized (this) {
                if (!this.f3855do) {
                    SF<T> sf = this.f3853do;
                    Objects.requireNonNull(sf);
                    T t = sf.get();
                    this.f3854do = t;
                    this.f3855do = true;
                    this.f3853do = null;
                    return t;
                }
            }
        }
        return this.f3854do;
    }

    public final String toString() {
        Object obj = this.f3853do;
        if (obj == null) {
            String valueOf = String.valueOf(this.f3854do);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
