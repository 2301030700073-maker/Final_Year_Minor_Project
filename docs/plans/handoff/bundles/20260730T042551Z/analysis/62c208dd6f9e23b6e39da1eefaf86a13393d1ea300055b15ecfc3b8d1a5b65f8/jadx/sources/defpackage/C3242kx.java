package defpackage;

/* renamed from: kx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3242kx {

    /* renamed from: do, reason: not valid java name */
    public final Long f14066do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14067do;

    public C3242kx(String str, long j) {
        this.f14067do = str;
        this.f14066do = Long.valueOf(j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3242kx)) {
            return false;
        }
        C3242kx c3242kx = (C3242kx) obj;
        if (!this.f14067do.equals(c3242kx.f14067do)) {
            return false;
        }
        Long l = c3242kx.f14066do;
        Long l2 = this.f14066do;
        return l2 != null ? l2.equals(l) : l == null;
    }

    public final int hashCode() {
        int hashCode = this.f14067do.hashCode() * 31;
        Long l = this.f14066do;
        return hashCode + (l != null ? l.hashCode() : 0);
    }
}
