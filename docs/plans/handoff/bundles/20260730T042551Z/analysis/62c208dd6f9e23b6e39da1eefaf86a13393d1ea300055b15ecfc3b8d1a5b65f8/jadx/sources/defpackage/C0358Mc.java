package defpackage;

/* renamed from: Mc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0358Mc {

    /* renamed from: do, reason: not valid java name */
    public final double f2211do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC0337Lc f2212do;

    /* renamed from: if, reason: not valid java name */
    public final EnumC0337Lc f2213if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0358Mc() {
        /*
            r3 = this;
            Lc r0 = defpackage.EnumC0337Lc.COLLECTION_SDK_NOT_INSTALLED
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r3.<init>(r0, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0358Mc.<init>():void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0358Mc)) {
            return false;
        }
        C0358Mc c0358Mc = (C0358Mc) obj;
        return this.f2212do == c0358Mc.f2212do && this.f2213if == c0358Mc.f2213if && Double.compare(this.f2211do, c0358Mc.f2211do) == 0;
    }

    public final int hashCode() {
        int hashCode = (this.f2213if.hashCode() + (this.f2212do.hashCode() * 31)) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.f2211do);
        return hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
    }

    public final String toString() {
        return "DataCollectionStatus(performance=" + this.f2212do + ", crashlytics=" + this.f2213if + ", sessionSamplingRate=" + this.f2211do + ')';
    }

    public C0358Mc(EnumC0337Lc enumC0337Lc, EnumC0337Lc enumC0337Lc2, double d) {
        C0173Do.m401try(enumC0337Lc, "performance");
        C0173Do.m401try(enumC0337Lc2, "crashlytics");
        this.f2212do = enumC0337Lc;
        this.f2213if = enumC0337Lc2;
        this.f2211do = d;
    }
}
