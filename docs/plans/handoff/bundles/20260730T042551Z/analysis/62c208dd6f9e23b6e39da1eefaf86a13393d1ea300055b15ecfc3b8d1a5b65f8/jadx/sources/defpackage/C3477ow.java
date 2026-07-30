package defpackage;

/* renamed from: ow, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3477ow implements Q7 {

    /* renamed from: do, reason: not valid java name */
    public final Class<?> f14869do;

    public C3477ow(Class cls) {
        C0173Do.m401try(cls, "jClass");
        this.f14869do = cls;
    }

    @Override // defpackage.Q7
    /* renamed from: do */
    public final Class<?> mo1830do() {
        return this.f14869do;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3477ow) {
            if (C0173Do.m394do(this.f14869do, ((C3477ow) obj).f14869do)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14869do.hashCode();
    }

    public final String toString() {
        return this.f14869do.toString() + " (Kotlin reflection is not available)";
    }
}
