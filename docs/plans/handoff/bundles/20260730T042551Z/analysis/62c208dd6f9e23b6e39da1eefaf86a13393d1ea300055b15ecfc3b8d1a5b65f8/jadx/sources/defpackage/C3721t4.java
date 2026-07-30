package defpackage;

/* renamed from: t4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3721t4 extends AbstractC0680aF {

    /* renamed from: do, reason: not valid java name */
    public final long f15610do;

    /* renamed from: for, reason: not valid java name */
    public final long f15611for;

    /* renamed from: if, reason: not valid java name */
    public final long f15612if;

    public C3721t4(long j, long j2, long j3) {
        this.f15610do = j;
        this.f15612if = j2;
        this.f15611for = j3;
    }

    @Override // defpackage.AbstractC0680aF
    /* renamed from: do */
    public final long mo3109do() {
        return this.f15612if;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0680aF)) {
            return false;
        }
        AbstractC0680aF abstractC0680aF = (AbstractC0680aF) obj;
        return this.f15610do == abstractC0680aF.mo3111if() && this.f15612if == abstractC0680aF.mo3109do() && this.f15611for == abstractC0680aF.mo3110for();
    }

    @Override // defpackage.AbstractC0680aF
    /* renamed from: for */
    public final long mo3110for() {
        return this.f15611for;
    }

    public final int hashCode() {
        long j = this.f15610do;
        long j2 = this.f15612if;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f15611for;
        return ((int) ((j3 >>> 32) ^ j3)) ^ i;
    }

    @Override // defpackage.AbstractC0680aF
    /* renamed from: if */
    public final long mo3111if() {
        return this.f15610do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StartupTime{epochMillis=");
        sb.append(this.f15610do);
        sb.append(", elapsedRealtime=");
        sb.append(this.f15612if);
        sb.append(", uptimeMillis=");
        return C4122zt.m8818case(sb, this.f15611for, "}");
    }
}
