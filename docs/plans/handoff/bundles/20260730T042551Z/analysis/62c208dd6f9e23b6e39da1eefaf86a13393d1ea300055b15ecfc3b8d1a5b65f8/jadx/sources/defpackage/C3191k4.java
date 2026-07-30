package defpackage;

/* renamed from: k4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3191k4 extends Iw {

    /* renamed from: do, reason: not valid java name */
    public final long f13867do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3696sg f13868do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3794uI f13869do;

    public C3191k4(long j, AbstractC3794uI abstractC3794uI, AbstractC3696sg abstractC3696sg) {
        this.f13867do = j;
        if (abstractC3794uI == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f13869do = abstractC3794uI;
        if (abstractC3696sg == null) {
            throw new NullPointerException("Null event");
        }
        this.f13868do = abstractC3696sg;
    }

    @Override // defpackage.Iw
    /* renamed from: do */
    public final AbstractC3696sg mo989do() {
        return this.f13868do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Iw)) {
            return false;
        }
        Iw iw = (Iw) obj;
        return this.f13867do == iw.mo991if() && this.f13869do.equals(iw.mo990for()) && this.f13868do.equals(iw.mo989do());
    }

    @Override // defpackage.Iw
    /* renamed from: for */
    public final AbstractC3794uI mo990for() {
        return this.f13869do;
    }

    public final int hashCode() {
        long j = this.f13867do;
        return this.f13868do.hashCode() ^ ((((((int) ((j >>> 32) ^ j)) ^ 1000003) * 1000003) ^ this.f13869do.hashCode()) * 1000003);
    }

    @Override // defpackage.Iw
    /* renamed from: if */
    public final long mo991if() {
        return this.f13867do;
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f13867do + ", transportContext=" + this.f13869do + ", event=" + this.f13868do + "}";
    }
}
