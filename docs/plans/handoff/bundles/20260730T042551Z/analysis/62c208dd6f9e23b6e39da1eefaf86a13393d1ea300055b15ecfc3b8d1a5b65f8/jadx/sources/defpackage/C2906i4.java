package defpackage;

/* renamed from: i4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2906i4 extends AbstractC0526Tq {

    /* renamed from: do, reason: not valid java name */
    public final long f13425do;

    public C2906i4(long j) {
        this.f13425do = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AbstractC0526Tq) && this.f13425do == ((AbstractC0526Tq) obj).mo2292if();
    }

    public final int hashCode() {
        long j = this.f13425do;
        return 1000003 ^ ((int) ((j >>> 32) ^ j));
    }

    @Override // defpackage.AbstractC0526Tq
    /* renamed from: if */
    public final long mo2292if() {
        return this.f13425do;
    }

    public final String toString() {
        return C4122zt.m8818case(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.f13425do, "}");
    }
}
