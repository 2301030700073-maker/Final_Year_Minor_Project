package defpackage;

/* renamed from: zC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4083zC {

    /* renamed from: do, reason: not valid java name */
    public final int f16877do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f16878do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16879do;

    /* renamed from: if, reason: not valid java name */
    public final String f16880if;

    public C4083zC(int i, String str, String str2, long j) {
        C0173Do.m401try(str, "sessionId");
        C0173Do.m401try(str2, "firstSessionId");
        this.f16879do = str;
        this.f16880if = str2;
        this.f16877do = i;
        this.f16878do = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4083zC)) {
            return false;
        }
        C4083zC c4083zC = (C4083zC) obj;
        return C0173Do.m394do(this.f16879do, c4083zC.f16879do) && C0173Do.m394do(this.f16880if, c4083zC.f16880if) && this.f16877do == c4083zC.f16877do && this.f16878do == c4083zC.f16878do;
    }

    public final int hashCode() {
        int m6915for = (Cif.m6915for(this.f16880if, this.f16879do.hashCode() * 31, 31) + this.f16877do) * 31;
        long j = this.f16878do;
        return m6915for + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "SessionDetails(sessionId=" + this.f16879do + ", firstSessionId=" + this.f16880if + ", sessionIndex=" + this.f16877do + ", sessionStartTimestampUs=" + this.f16878do + ')';
    }
}
