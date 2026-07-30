package defpackage;

/* loaded from: classes.dex */
public final class X3 extends AbstractC0099Ag {

    /* renamed from: do, reason: not valid java name */
    public final int f4452do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f4453do;

    /* renamed from: for, reason: not valid java name */
    public final int f4454for;

    /* renamed from: if, reason: not valid java name */
    public final int f4455if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f4456if;

    public X3(long j, int i, int i2, long j2, int i3) {
        this.f4453do = j;
        this.f4452do = i;
        this.f4455if = i2;
        this.f4456if = j2;
        this.f4454for = i3;
    }

    @Override // defpackage.AbstractC0099Ag
    /* renamed from: do */
    public final int mo83do() {
        return this.f4455if;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0099Ag)) {
            return false;
        }
        AbstractC0099Ag abstractC0099Ag = (AbstractC0099Ag) obj;
        return this.f4453do == abstractC0099Ag.mo87try() && this.f4452do == abstractC0099Ag.mo84for() && this.f4455if == abstractC0099Ag.mo83do() && this.f4456if == abstractC0099Ag.mo85if() && this.f4454for == abstractC0099Ag.mo86new();
    }

    @Override // defpackage.AbstractC0099Ag
    /* renamed from: for */
    public final int mo84for() {
        return this.f4452do;
    }

    public final int hashCode() {
        long j = this.f4453do;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f4452do) * 1000003) ^ this.f4455if) * 1000003;
        long j2 = this.f4456if;
        return this.f4454for ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    @Override // defpackage.AbstractC0099Ag
    /* renamed from: if */
    public final long mo85if() {
        return this.f4456if;
    }

    @Override // defpackage.AbstractC0099Ag
    /* renamed from: new */
    public final int mo86new() {
        return this.f4454for;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f4453do);
        sb.append(", loadBatchSize=");
        sb.append(this.f4452do);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.f4455if);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f4456if);
        sb.append(", maxBlobByteSizePerRow=");
        return V1.m2506this(sb, this.f4454for, "}");
    }

    @Override // defpackage.AbstractC0099Ag
    /* renamed from: try */
    public final long mo87try() {
        return this.f4453do;
    }
}
