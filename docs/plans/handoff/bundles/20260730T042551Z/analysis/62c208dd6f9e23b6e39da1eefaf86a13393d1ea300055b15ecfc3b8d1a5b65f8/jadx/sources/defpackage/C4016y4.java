package defpackage;

/* renamed from: y4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4016y4 extends CH {

    /* renamed from: do, reason: not valid java name */
    public final int f16676do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f16677do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16678do;

    public C4016y4(String str, long j, int i) {
        this.f16678do = str;
        this.f16677do = j;
        this.f16676do = i;
    }

    @Override // defpackage.CH
    /* renamed from: do */
    public final int mo257do() {
        return this.f16676do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CH)) {
            return false;
        }
        CH ch = (CH) obj;
        String str = this.f16678do;
        if (str != null ? str.equals(ch.mo259if()) : ch.mo259if() == null) {
            if (this.f16677do == ch.mo258for()) {
                int i = this.f16676do;
                if (i == 0) {
                    if (ch.mo257do() == 0) {
                        return true;
                    }
                } else if (C4122zt.m8822do(i, ch.mo257do())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.CH
    /* renamed from: for */
    public final long mo258for() {
        return this.f16677do;
    }

    public final int hashCode() {
        String str = this.f16678do;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f16677do;
        int i = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        int i2 = this.f16676do;
        return (i2 != 0 ? C4122zt.m8819catch(i2) : 0) ^ i;
    }

    @Override // defpackage.CH
    /* renamed from: if */
    public final String mo259if() {
        return this.f16678do;
    }

    public final String toString() {
        return "TokenResult{token=" + this.f16678do + ", tokenExpirationTimestamp=" + this.f16677do + ", responseCode=" + Creturn.m7976catch(this.f16676do) + "}";
    }
}
