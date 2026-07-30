package defpackage;

/* renamed from: o3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3426o3 extends F4 {

    /* renamed from: do, reason: not valid java name */
    public final int f14653do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f14654do;

    public C3426o3(int i, long j) {
        if (i == 0) {
            throw new NullPointerException("Null status");
        }
        this.f14653do = i;
        this.f14654do = j;
    }

    @Override // defpackage.F4
    /* renamed from: do */
    public final long mo572do() {
        return this.f14654do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof F4)) {
            return false;
        }
        F4 f4 = (F4) obj;
        return C4122zt.m8822do(this.f14653do, f4.mo573if()) && this.f14654do == f4.mo572do();
    }

    public final int hashCode() {
        int m8819catch = (C4122zt.m8819catch(this.f14653do) ^ 1000003) * 1000003;
        long j = this.f14654do;
        return m8819catch ^ ((int) (j ^ (j >>> 32)));
    }

    @Override // defpackage.F4
    /* renamed from: if */
    public final int mo573if() {
        return this.f14653do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(Creturn.m7983this(this.f14653do));
        sb.append(", nextRequestWaitMillis=");
        return C4122zt.m8818case(sb, this.f14654do, "}");
    }
}
