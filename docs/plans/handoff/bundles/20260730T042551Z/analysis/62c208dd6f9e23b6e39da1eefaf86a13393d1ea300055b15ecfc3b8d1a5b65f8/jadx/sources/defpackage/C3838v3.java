package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* renamed from: v3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3838v3 extends AbstractC0533Ub.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final int f15985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f15986do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15987do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0533Ub.Cdo.AbstractC0008do> f15988do;

    /* renamed from: for, reason: not valid java name */
    public final int f15989for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final long f15990for;

    /* renamed from: if, reason: not valid java name */
    public final int f15991if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f15992if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f15993if;

    /* renamed from: v3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Cdo.Cif {

        /* renamed from: do, reason: not valid java name */
        public byte f15994do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f15995do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f15996do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f15997do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<AbstractC0533Ub.Cdo.AbstractC0008do> f15998do;

        /* renamed from: for, reason: not valid java name */
        public int f15999for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public long f16000for;

        /* renamed from: if, reason: not valid java name */
        public int f16001if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public long f16002if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f16003if;

        /* renamed from: do, reason: not valid java name */
        public final C3838v3 m8424do() {
            String str;
            if (this.f15994do == 63 && (str = this.f15997do) != null) {
                return new C3838v3(this.f15995do, str, this.f16001if, this.f15999for, this.f15996do, this.f16002if, this.f16000for, this.f16003if, this.f15998do);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f15994do & 1) == 0) {
                sb.append(" pid");
            }
            if (this.f15997do == null) {
                sb.append(" processName");
            }
            if ((this.f15994do & 2) == 0) {
                sb.append(" reasonCode");
            }
            if ((this.f15994do & 4) == 0) {
                sb.append(" importance");
            }
            if ((this.f15994do & 8) == 0) {
                sb.append(" pss");
            }
            if ((this.f15994do & 16) == 0) {
                sb.append(" rss");
            }
            if ((this.f15994do & 32) == 0) {
                sb.append(" timestamp");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public C3838v3() {
        throw null;
    }

    public C3838v3(int i, String str, int i2, int i3, long j, long j2, long j3, String str2, List list) {
        this.f15985do = i;
        this.f15987do = str;
        this.f15991if = i2;
        this.f15989for = i3;
        this.f15986do = j;
        this.f15992if = j2;
        this.f15990for = j3;
        this.f15993if = str2;
        this.f15988do = list;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: case */
    public final int mo2439case() {
        return this.f15991if;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: do */
    public final List<AbstractC0533Ub.Cdo.AbstractC0008do> mo2440do() {
        return this.f15988do;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: else */
    public final long mo2441else() {
        return this.f15992if;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Cdo)) {
            return false;
        }
        AbstractC0533Ub.Cdo cdo = (AbstractC0533Ub.Cdo) obj;
        if (this.f15985do == cdo.mo2442for() && this.f15987do.equals(cdo.mo2445new()) && this.f15991if == cdo.mo2439case() && this.f15989for == cdo.mo2444if() && this.f15986do == cdo.mo2447try() && this.f15992if == cdo.mo2441else() && this.f15990for == cdo.mo2443goto() && ((str = this.f15993if) != null ? str.equals(cdo.mo2446this()) : cdo.mo2446this() == null)) {
            List<AbstractC0533Ub.Cdo.AbstractC0008do> list = this.f15988do;
            if (list == null) {
                if (cdo.mo2440do() == null) {
                    return true;
                }
            } else if (list.equals(cdo.mo2440do())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: for */
    public final int mo2442for() {
        return this.f15985do;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: goto */
    public final long mo2443goto() {
        return this.f15990for;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f15985do ^ 1000003) * 1000003) ^ this.f15987do.hashCode()) * 1000003) ^ this.f15991if) * 1000003) ^ this.f15989for) * 1000003;
        long j = this.f15986do;
        int i = (hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f15992if;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f15990for;
        int i3 = (i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        String str = this.f15993if;
        int hashCode2 = (i3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<AbstractC0533Ub.Cdo.AbstractC0008do> list = this.f15988do;
        return hashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: if */
    public final int mo2444if() {
        return this.f15989for;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: new */
    public final String mo2445new() {
        return this.f15987do;
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: this */
    public final String mo2446this() {
        return this.f15993if;
    }

    public final String toString() {
        return "ApplicationExitInfo{pid=" + this.f15985do + ", processName=" + this.f15987do + ", reasonCode=" + this.f15991if + ", importance=" + this.f15989for + ", pss=" + this.f15986do + ", rss=" + this.f15992if + ", timestamp=" + this.f15990for + ", traceFile=" + this.f15993if + ", buildIdMappingForArch=" + this.f15988do + "}";
    }

    @Override // defpackage.AbstractC0533Ub.Cdo
    /* renamed from: try */
    public final long mo2447try() {
        return this.f15986do;
    }
}
