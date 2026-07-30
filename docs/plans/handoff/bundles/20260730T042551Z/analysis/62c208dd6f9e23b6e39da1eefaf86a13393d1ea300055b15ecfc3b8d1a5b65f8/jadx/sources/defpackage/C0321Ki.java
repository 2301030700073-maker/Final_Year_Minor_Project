package defpackage;

/* renamed from: Ki, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0321Ki {

    /* renamed from: do, reason: not valid java name */
    public final String f1858do;

    public C0321Ki(String str) {
        this.f1858do = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0321Ki) && C0173Do.m394do(this.f1858do, ((C0321Ki) obj).f1858do);
    }

    public final int hashCode() {
        String str = this.f1858do;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return "FirebaseSessionsData(sessionId=" + this.f1858do + ')';
    }
}
