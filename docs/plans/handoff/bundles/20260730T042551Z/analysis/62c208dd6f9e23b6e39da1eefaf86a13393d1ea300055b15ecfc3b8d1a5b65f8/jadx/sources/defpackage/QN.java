package defpackage;

/* loaded from: classes3.dex */
public final class QN extends RN {

    /* renamed from: do, reason: not valid java name */
    public final int f2931do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f2932do;

    public QN(int i, long j) {
        this.f2931do = i;
        this.f2932do = j;
    }

    @Override // defpackage.RN
    /* renamed from: do, reason: not valid java name */
    public final int mo1957do() {
        return this.f2931do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RN) {
            RN rn = (RN) obj;
            if (this.f2931do == rn.mo1957do() && this.f2932do == rn.mo1958if()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f2932do;
        return ((this.f2931do ^ 1000003) * 1000003) ^ ((int) ((j >>> 32) ^ j));
    }

    @Override // defpackage.RN
    /* renamed from: if, reason: not valid java name */
    public final long mo1958if() {
        return this.f2932do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventRecord{eventType=");
        sb.append(this.f2931do);
        sb.append(", eventTimestamp=");
        return C4122zt.m8818case(sb, this.f2932do, "}");
    }
}
