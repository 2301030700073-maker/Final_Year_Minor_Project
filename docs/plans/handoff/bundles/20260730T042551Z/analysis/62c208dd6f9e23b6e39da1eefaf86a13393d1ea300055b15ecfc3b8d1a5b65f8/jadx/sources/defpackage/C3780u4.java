package defpackage;

import defpackage.AbstractC3261lF;

/* renamed from: u4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3780u4 extends AbstractC3261lF {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC3261lF.Cdo f15849do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3261lF.Cfor f15850do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3261lF.Cif f15851do;

    public C3780u4(C3839v4 c3839v4, C3957x4 c3957x4, C3898w4 c3898w4) {
        this.f15849do = c3839v4;
        this.f15850do = c3957x4;
        this.f15851do = c3898w4;
    }

    @Override // defpackage.AbstractC3261lF
    /* renamed from: do */
    public final AbstractC3261lF.Cdo mo7338do() {
        return this.f15849do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3261lF)) {
            return false;
        }
        AbstractC3261lF abstractC3261lF = (AbstractC3261lF) obj;
        return this.f15849do.equals(abstractC3261lF.mo7338do()) && this.f15850do.equals(abstractC3261lF.mo7339for()) && this.f15851do.equals(abstractC3261lF.mo7340if());
    }

    @Override // defpackage.AbstractC3261lF
    /* renamed from: for */
    public final AbstractC3261lF.Cfor mo7339for() {
        return this.f15850do;
    }

    public final int hashCode() {
        return ((((this.f15849do.hashCode() ^ 1000003) * 1000003) ^ this.f15850do.hashCode()) * 1000003) ^ this.f15851do.hashCode();
    }

    @Override // defpackage.AbstractC3261lF
    /* renamed from: if */
    public final AbstractC3261lF.Cif mo7340if() {
        return this.f15851do;
    }

    public final String toString() {
        return "StaticSessionData{appData=" + this.f15849do + ", osData=" + this.f15850do + ", deviceData=" + this.f15851do + "}";
    }
}
