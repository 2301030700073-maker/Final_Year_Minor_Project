package defpackage;

import defpackage.AbstractC3261lF;

/* renamed from: w4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3898w4 extends AbstractC3261lF.Cif {

    /* renamed from: do, reason: not valid java name */
    public final int f16187do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f16188do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16189do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f16190do;

    /* renamed from: for, reason: not valid java name */
    public final int f16191for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final String f16192for;

    /* renamed from: if, reason: not valid java name */
    public final int f16193if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f16194if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f16195if;

    public C3898w4(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f16187do = i;
        if (str == null) {
            throw new NullPointerException("Null model");
        }
        this.f16189do = str;
        this.f16193if = i2;
        this.f16188do = j;
        this.f16194if = j2;
        this.f16190do = z;
        this.f16191for = i3;
        if (str2 == null) {
            throw new NullPointerException("Null manufacturer");
        }
        this.f16195if = str2;
        if (str3 == null) {
            throw new NullPointerException("Null modelClass");
        }
        this.f16192for = str3;
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: case */
    public final String mo7350case() {
        return this.f16189do;
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: do */
    public final int mo7351do() {
        return this.f16187do;
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: else */
    public final String mo7352else() {
        return this.f16192for;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3261lF.Cif)) {
            return false;
        }
        AbstractC3261lF.Cif cif = (AbstractC3261lF.Cif) obj;
        return this.f16187do == cif.mo7351do() && this.f16189do.equals(cif.mo7350case()) && this.f16193if == cif.mo7355if() && this.f16188do == cif.mo7357this() && this.f16194if == cif.mo7353for() && this.f16190do == cif.mo7356new() && this.f16191for == cif.mo7354goto() && this.f16195if.equals(cif.mo7358try()) && this.f16192for.equals(cif.mo7352else());
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: for */
    public final long mo7353for() {
        return this.f16194if;
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: goto */
    public final int mo7354goto() {
        return this.f16191for;
    }

    public final int hashCode() {
        int hashCode = (((((this.f16187do ^ 1000003) * 1000003) ^ this.f16189do.hashCode()) * 1000003) ^ this.f16193if) * 1000003;
        long j = this.f16188do;
        int i = (hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f16194if;
        return ((((((((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f16190do ? 1231 : 1237)) * 1000003) ^ this.f16191for) * 1000003) ^ this.f16195if.hashCode()) * 1000003) ^ this.f16192for.hashCode();
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: if */
    public final int mo7355if() {
        return this.f16193if;
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: new */
    public final boolean mo7356new() {
        return this.f16190do;
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: this */
    public final long mo7357this() {
        return this.f16188do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceData{arch=");
        sb.append(this.f16187do);
        sb.append(", model=");
        sb.append(this.f16189do);
        sb.append(", availableProcessors=");
        sb.append(this.f16193if);
        sb.append(", totalRam=");
        sb.append(this.f16188do);
        sb.append(", diskSpace=");
        sb.append(this.f16194if);
        sb.append(", isEmulator=");
        sb.append(this.f16190do);
        sb.append(", state=");
        sb.append(this.f16191for);
        sb.append(", manufacturer=");
        sb.append(this.f16195if);
        sb.append(", modelClass=");
        return Creturn.m7984try(sb, this.f16192for, "}");
    }

    @Override // defpackage.AbstractC3261lF.Cif
    /* renamed from: try */
    public final String mo7358try() {
        return this.f16195if;
    }
}
