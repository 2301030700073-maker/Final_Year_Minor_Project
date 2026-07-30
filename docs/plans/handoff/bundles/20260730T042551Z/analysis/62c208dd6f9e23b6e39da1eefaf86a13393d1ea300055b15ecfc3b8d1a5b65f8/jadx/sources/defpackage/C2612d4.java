package defpackage;

/* renamed from: d4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2612d4 extends AbstractC2712eo {

    /* renamed from: do, reason: not valid java name */
    public final int f12420do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CH f12421do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f12422do;

    /* renamed from: for, reason: not valid java name */
    public final String f12423for;

    /* renamed from: if, reason: not valid java name */
    public final String f12424if;

    public C2612d4(String str, String str2, String str3, CH ch, int i) {
        this.f12422do = str;
        this.f12424if = str2;
        this.f12423for = str3;
        this.f12421do = ch;
        this.f12420do = i;
    }

    @Override // defpackage.AbstractC2712eo
    /* renamed from: do, reason: not valid java name */
    public final CH mo6405do() {
        return this.f12421do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2712eo)) {
            return false;
        }
        AbstractC2712eo abstractC2712eo = (AbstractC2712eo) obj;
        String str = this.f12422do;
        if (str != null ? str.equals(abstractC2712eo.mo6409try()) : abstractC2712eo.mo6409try() == null) {
            String str2 = this.f12424if;
            if (str2 != null ? str2.equals(abstractC2712eo.mo6407if()) : abstractC2712eo.mo6407if() == null) {
                String str3 = this.f12423for;
                if (str3 != null ? str3.equals(abstractC2712eo.mo6406for()) : abstractC2712eo.mo6406for() == null) {
                    CH ch = this.f12421do;
                    if (ch != null ? ch.equals(abstractC2712eo.mo6405do()) : abstractC2712eo.mo6405do() == null) {
                        int i = this.f12420do;
                        if (i == 0) {
                            if (abstractC2712eo.mo6408new() == 0) {
                                return true;
                            }
                        } else if (C4122zt.m8822do(i, abstractC2712eo.mo6408new())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC2712eo
    /* renamed from: for, reason: not valid java name */
    public final String mo6406for() {
        return this.f12423for;
    }

    public final int hashCode() {
        String str = this.f12422do;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f12424if;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f12423for;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        CH ch = this.f12421do;
        int hashCode4 = (hashCode3 ^ (ch == null ? 0 : ch.hashCode())) * 1000003;
        int i = this.f12420do;
        return (i != 0 ? C4122zt.m8819catch(i) : 0) ^ hashCode4;
    }

    @Override // defpackage.AbstractC2712eo
    /* renamed from: if, reason: not valid java name */
    public final String mo6407if() {
        return this.f12424if;
    }

    @Override // defpackage.AbstractC2712eo
    /* renamed from: new, reason: not valid java name */
    public final int mo6408new() {
        return this.f12420do;
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.f12422do + ", fid=" + this.f12424if + ", refreshToken=" + this.f12423for + ", authToken=" + this.f12421do + ", responseCode=" + Cpublic.m7818class(this.f12420do) + "}";
    }

    @Override // defpackage.AbstractC2712eo
    /* renamed from: try, reason: not valid java name */
    public final String mo6409try() {
        return this.f12422do;
    }
}
