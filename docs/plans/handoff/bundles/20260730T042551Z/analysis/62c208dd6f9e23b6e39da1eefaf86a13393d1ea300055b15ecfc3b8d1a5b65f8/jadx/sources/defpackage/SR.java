package defpackage;

/* loaded from: classes3.dex */
public final class SR<V> {

    /* renamed from: new, reason: not valid java name */
    public static final Object f3509new = new Object();

    /* renamed from: do, reason: not valid java name */
    public final RR<V> f3510do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final V f3511do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3512do;

    /* renamed from: for, reason: not valid java name */
    public volatile V f3513for;

    /* renamed from: if, reason: not valid java name */
    public final Object f3514if;

    public SR() {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SR(String str, Object obj, RR rr) {
        this.f3514if = new Object();
        this.f3513for = null;
        this.f3512do = str;
        this.f3511do = obj;
        this.f3510do = rr;
    }

    /* renamed from: do, reason: not valid java name */
    public final V m2158do(V v) {
        synchronized (this.f3514if) {
        }
        if (v != null) {
            return v;
        }
        if (C3850vF.f16041do == null) {
            return this.f3511do;
        }
        synchronized (f3509new) {
            if (C0820cd.m4913else()) {
                return this.f3513for == null ? this.f3511do : this.f3513for;
            }
            try {
                for (SR<?> sr : C3684sQ.f15460do) {
                    if (C0820cd.m4913else()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    V v2 = null;
                    try {
                        RR<?> rr = sr.f3510do;
                        if (rr != null) {
                            v2 = (V) rr.zza();
                        }
                    } catch (IllegalStateException unused) {
                    }
                    synchronized (f3509new) {
                        sr.f3513for = v2;
                    }
                }
            } catch (SecurityException unused2) {
            }
            RR<V> rr2 = this.f3510do;
            if (rr2 == null) {
                return this.f3511do;
            }
            try {
                return rr2.zza();
            } catch (IllegalStateException unused3) {
                return this.f3511do;
            } catch (SecurityException unused4) {
                return this.f3511do;
            }
        }
    }
}
