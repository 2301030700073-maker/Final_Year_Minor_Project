package defpackage;

import defpackage.AbstractC0438Pq;
import java.util.Arrays;

/* renamed from: g4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2788g4 extends AbstractC0438Pq {

    /* renamed from: do, reason: not valid java name */
    public final long f13040do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0582Wg f13041do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Z8 f13042do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Integer f13043do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f13044do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3946wu f13045do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f13046do;

    /* renamed from: for, reason: not valid java name */
    public final long f13047for;

    /* renamed from: if, reason: not valid java name */
    public final long f13048if;

    /* renamed from: g4$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0438Pq.Cdo {

        /* renamed from: do, reason: not valid java name */
        public AbstractC0582Wg f13049do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Z8 f13050do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Integer f13051do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Long f13052do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f13053do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC3946wu f13054do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public byte[] f13055do;

        /* renamed from: for, reason: not valid java name */
        public Long f13056for;

        /* renamed from: if, reason: not valid java name */
        public Long f13057if;
    }

    public C2788g4(long j, Integer num, Z8 z8, long j2, byte[] bArr, String str, long j3, AbstractC3946wu abstractC3946wu, AbstractC0582Wg abstractC0582Wg) {
        this.f13040do = j;
        this.f13043do = num;
        this.f13042do = z8;
        this.f13048if = j2;
        this.f13046do = bArr;
        this.f13044do = str;
        this.f13047for = j3;
        this.f13045do = abstractC3946wu;
        this.f13041do = abstractC0582Wg;
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: case */
    public final AbstractC3946wu mo1802case() {
        return this.f13045do;
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: do */
    public final Z8 mo1803do() {
        return this.f13042do;
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: else */
    public final byte[] mo1804else() {
        return this.f13046do;
    }

    public final boolean equals(Object obj) {
        Integer num;
        Z8 z8;
        String str;
        AbstractC3946wu abstractC3946wu;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0438Pq)) {
            return false;
        }
        AbstractC0438Pq abstractC0438Pq = (AbstractC0438Pq) obj;
        if (this.f13040do == abstractC0438Pq.mo1805for() && ((num = this.f13043do) != null ? num.equals(abstractC0438Pq.mo1807if()) : abstractC0438Pq.mo1807if() == null) && ((z8 = this.f13042do) != null ? z8.equals(abstractC0438Pq.mo1803do()) : abstractC0438Pq.mo1803do() == null) && this.f13048if == abstractC0438Pq.mo1808new()) {
            if (Arrays.equals(this.f13046do, abstractC0438Pq instanceof C2788g4 ? ((C2788g4) abstractC0438Pq).f13046do : abstractC0438Pq.mo1804else()) && ((str = this.f13044do) != null ? str.equals(abstractC0438Pq.mo1806goto()) : abstractC0438Pq.mo1806goto() == null) && this.f13047for == abstractC0438Pq.mo1809this() && ((abstractC3946wu = this.f13045do) != null ? abstractC3946wu.equals(abstractC0438Pq.mo1802case()) : abstractC0438Pq.mo1802case() == null)) {
                AbstractC0582Wg abstractC0582Wg = this.f13041do;
                if (abstractC0582Wg == null) {
                    if (abstractC0438Pq.mo1810try() == null) {
                        return true;
                    }
                } else if (abstractC0582Wg.equals(abstractC0438Pq.mo1810try())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: for */
    public final long mo1805for() {
        return this.f13040do;
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: goto */
    public final String mo1806goto() {
        return this.f13044do;
    }

    public final int hashCode() {
        long j = this.f13040do;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f13043do;
        int hashCode = (i ^ (num == null ? 0 : num.hashCode())) * 1000003;
        Z8 z8 = this.f13042do;
        int hashCode2 = (hashCode ^ (z8 == null ? 0 : z8.hashCode())) * 1000003;
        long j2 = this.f13048if;
        int hashCode3 = (((hashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f13046do)) * 1000003;
        String str = this.f13044do;
        int hashCode4 = (hashCode3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.f13047for;
        int i2 = (hashCode4 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        AbstractC3946wu abstractC3946wu = this.f13045do;
        int hashCode5 = (i2 ^ (abstractC3946wu == null ? 0 : abstractC3946wu.hashCode())) * 1000003;
        AbstractC0582Wg abstractC0582Wg = this.f13041do;
        return hashCode5 ^ (abstractC0582Wg != null ? abstractC0582Wg.hashCode() : 0);
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: if */
    public final Integer mo1807if() {
        return this.f13043do;
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: new */
    public final long mo1808new() {
        return this.f13048if;
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: this */
    public final long mo1809this() {
        return this.f13047for;
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f13040do + ", eventCode=" + this.f13043do + ", complianceData=" + this.f13042do + ", eventUptimeMs=" + this.f13048if + ", sourceExtension=" + Arrays.toString(this.f13046do) + ", sourceExtensionJsonProto3=" + this.f13044do + ", timezoneOffsetSeconds=" + this.f13047for + ", networkConnectionInfo=" + this.f13045do + ", experimentIds=" + this.f13041do + "}";
    }

    @Override // defpackage.AbstractC0438Pq
    /* renamed from: try */
    public final AbstractC0582Wg mo1810try() {
        return this.f13041do;
    }
}
