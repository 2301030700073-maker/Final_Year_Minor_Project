package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* renamed from: gC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2796gC extends WB<C2796gC> {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReferenceArray f13077do;

    public C2796gC(long j, C2796gC c2796gC, int i) {
        super(j, c2796gC, i);
        this.f13077do = new AtomicReferenceArray(C2737fC.f12857if);
    }

    @Override // defpackage.WB
    /* renamed from: case */
    public final int mo2709case() {
        return C2737fC.f12857if;
    }

    @Override // defpackage.WB
    /* renamed from: else */
    public final void mo2710else(int i, InterfaceC3161jb interfaceC3161jb) {
        this.f13077do.set(i, C2737fC.f12859new);
        m2712goto();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + super.f4345do + ", hashCode=" + hashCode() + ']';
    }
}
