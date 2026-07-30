package defpackage;

/* loaded from: classes3.dex */
public final class HC {

    /* renamed from: do, reason: not valid java name */
    public final int f1306do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f1307do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0358Mc f1308do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1309do;

    /* renamed from: for, reason: not valid java name */
    public final String f1310for;

    /* renamed from: if, reason: not valid java name */
    public final String f1311if;

    /* renamed from: new, reason: not valid java name */
    public final String f1312new;

    public HC(String str, String str2, int i, long j, C0358Mc c0358Mc, String str3, String str4) {
        C0173Do.m401try(str, "sessionId");
        C0173Do.m401try(str2, "firstSessionId");
        this.f1309do = str;
        this.f1311if = str2;
        this.f1306do = i;
        this.f1307do = j;
        this.f1308do = c0358Mc;
        this.f1310for = str3;
        this.f1312new = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HC)) {
            return false;
        }
        HC hc = (HC) obj;
        return C0173Do.m394do(this.f1309do, hc.f1309do) && C0173Do.m394do(this.f1311if, hc.f1311if) && this.f1306do == hc.f1306do && this.f1307do == hc.f1307do && C0173Do.m394do(this.f1308do, hc.f1308do) && C0173Do.m394do(this.f1310for, hc.f1310for) && C0173Do.m394do(this.f1312new, hc.f1312new);
    }

    public final int hashCode() {
        int m6915for = (Cif.m6915for(this.f1311if, this.f1309do.hashCode() * 31, 31) + this.f1306do) * 31;
        long j = this.f1307do;
        return this.f1312new.hashCode() + Cif.m6915for(this.f1310for, (this.f1308do.hashCode() + ((m6915for + ((int) (j ^ (j >>> 32)))) * 31)) * 31, 31);
    }

    public final String toString() {
        return "SessionInfo(sessionId=" + this.f1309do + ", firstSessionId=" + this.f1311if + ", sessionIndex=" + this.f1306do + ", eventTimestampUs=" + this.f1307do + ", dataCollectionStatus=" + this.f1308do + ", firebaseInstallationId=" + this.f1310for + ", firebaseAuthenticationToken=" + this.f1312new + ')';
    }
}
