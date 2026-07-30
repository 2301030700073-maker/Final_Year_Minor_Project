package defpackage;

/* renamed from: o4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3427o4 extends AbstractC3551qA {

    /* renamed from: do, reason: not valid java name */
    public final long f14655do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14656do;

    /* renamed from: for, reason: not valid java name */
    public final String f14657for;

    /* renamed from: if, reason: not valid java name */
    public final String f14658if;

    /* renamed from: new, reason: not valid java name */
    public final String f14659new;

    public C3427o4(String str, String str2, String str3, String str4, long j) {
        if (str == null) {
            throw new NullPointerException("Null rolloutId");
        }
        this.f14656do = str;
        if (str2 == null) {
            throw new NullPointerException("Null parameterKey");
        }
        this.f14658if = str2;
        if (str3 == null) {
            throw new NullPointerException("Null parameterValue");
        }
        this.f14657for = str3;
        if (str4 == null) {
            throw new NullPointerException("Null variantId");
        }
        this.f14659new = str4;
        this.f14655do = j;
    }

    @Override // defpackage.AbstractC3551qA
    /* renamed from: do, reason: not valid java name */
    public final String mo7653do() {
        return this.f14658if;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3551qA)) {
            return false;
        }
        AbstractC3551qA abstractC3551qA = (AbstractC3551qA) obj;
        return this.f14656do.equals(abstractC3551qA.mo7654for()) && this.f14658if.equals(abstractC3551qA.mo7653do()) && this.f14657for.equals(abstractC3551qA.mo7655if()) && this.f14659new.equals(abstractC3551qA.mo7657try()) && this.f14655do == abstractC3551qA.mo7656new();
    }

    @Override // defpackage.AbstractC3551qA
    /* renamed from: for, reason: not valid java name */
    public final String mo7654for() {
        return this.f14656do;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f14656do.hashCode() ^ 1000003) * 1000003) ^ this.f14658if.hashCode()) * 1000003) ^ this.f14657for.hashCode()) * 1000003) ^ this.f14659new.hashCode()) * 1000003;
        long j = this.f14655do;
        return hashCode ^ ((int) ((j >>> 32) ^ j));
    }

    @Override // defpackage.AbstractC3551qA
    /* renamed from: if, reason: not valid java name */
    public final String mo7655if() {
        return this.f14657for;
    }

    @Override // defpackage.AbstractC3551qA
    /* renamed from: new, reason: not valid java name */
    public final long mo7656new() {
        return this.f14655do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutId=");
        sb.append(this.f14656do);
        sb.append(", parameterKey=");
        sb.append(this.f14658if);
        sb.append(", parameterValue=");
        sb.append(this.f14657for);
        sb.append(", variantId=");
        sb.append(this.f14659new);
        sb.append(", templateVersion=");
        return C4122zt.m8818case(sb, this.f14655do, "}");
    }

    @Override // defpackage.AbstractC3551qA
    /* renamed from: try, reason: not valid java name */
    public final String mo7657try() {
        return this.f14659new;
    }
}
