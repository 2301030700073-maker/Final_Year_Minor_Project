package defpackage;

/* renamed from: ei, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2706ei {

    /* renamed from: do, reason: not valid java name */
    public final String f12697do;

    /* renamed from: if, reason: not valid java name */
    public final String f12698if;

    public C2706ei(String str, String str2) {
        this.f12697do = str;
        this.f12698if = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2706ei)) {
            return false;
        }
        C2706ei c2706ei = (C2706ei) obj;
        return C0173Do.m394do(this.f12697do, c2706ei.f12697do) && C0173Do.m394do(this.f12698if, c2706ei.f12698if);
    }

    public final int hashCode() {
        String str = this.f12697do;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f12698if;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "FirebaseInstallationId(fid=" + this.f12697do + ", authToken=" + this.f12698if + ')';
    }
}
