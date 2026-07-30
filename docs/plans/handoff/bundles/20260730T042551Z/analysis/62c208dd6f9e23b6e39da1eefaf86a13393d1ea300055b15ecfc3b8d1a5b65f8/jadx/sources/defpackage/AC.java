package defpackage;

/* loaded from: classes3.dex */
public final class AC {

    /* renamed from: do, reason: not valid java name */
    public final EnumC0187Eg f50do = EnumC0187Eg.SESSION_START;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HC f51do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3543q2 f52do;

    public AC(HC hc, C3543q2 c3543q2) {
        this.f51do = hc;
        this.f52do = c3543q2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AC)) {
            return false;
        }
        AC ac = (AC) obj;
        return this.f50do == ac.f50do && C0173Do.m394do(this.f51do, ac.f51do) && C0173Do.m394do(this.f52do, ac.f52do);
    }

    public final int hashCode() {
        return this.f52do.hashCode() + ((this.f51do.hashCode() + (this.f50do.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "SessionEvent(eventType=" + this.f50do + ", sessionData=" + this.f51do + ", applicationInfo=" + this.f52do + ')';
    }
}
