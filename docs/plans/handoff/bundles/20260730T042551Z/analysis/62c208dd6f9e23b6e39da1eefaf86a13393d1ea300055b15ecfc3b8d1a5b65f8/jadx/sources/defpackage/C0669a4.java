package defpackage;

/* renamed from: a4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0669a4 extends AbstractC2764fh {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC2705eh f4927do;

    public C0669a4(AbstractC2705eh abstractC2705eh) {
        this.f4927do = abstractC2705eh;
    }

    @Override // defpackage.AbstractC2764fh
    /* renamed from: do, reason: not valid java name */
    public final AbstractC2705eh mo3107do() {
        return this.f4927do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2764fh)) {
            return false;
        }
        AbstractC2705eh abstractC2705eh = this.f4927do;
        AbstractC2705eh mo3107do = ((AbstractC2764fh) obj).mo3107do();
        return abstractC2705eh == null ? mo3107do == null : abstractC2705eh.equals(mo3107do);
    }

    public final int hashCode() {
        AbstractC2705eh abstractC2705eh = this.f4927do;
        return (abstractC2705eh == null ? 0 : abstractC2705eh.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ExternalPrivacyContext{prequest=" + this.f4927do + "}";
    }
}
