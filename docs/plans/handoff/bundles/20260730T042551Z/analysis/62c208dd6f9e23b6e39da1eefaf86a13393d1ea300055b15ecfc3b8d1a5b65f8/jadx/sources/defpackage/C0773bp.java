package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: bp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0773bp extends C2713ep {

    /* renamed from: do, reason: not valid java name */
    public final boolean f8456do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0773bp(InterfaceC0634Yo interfaceC0634Yo) {
        super(true);
        boolean z = true;
        g(interfaceC0634Yo);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C2713ep.f12714if;
        InterfaceC3960x7 interfaceC3960x7 = (InterfaceC3960x7) atomicReferenceFieldUpdater.get(this);
        C4019y7 c4019y7 = interfaceC3960x7 instanceof C4019y7 ? (C4019y7) interfaceC3960x7 : null;
        if (c4019y7 != null) {
            C2713ep m6465while = c4019y7.m6465while();
            while (!m6465while.mo4862transient()) {
                InterfaceC3960x7 interfaceC3960x72 = (InterfaceC3960x7) atomicReferenceFieldUpdater.get(m6465while);
                C4019y7 c4019y72 = interfaceC3960x72 instanceof C4019y7 ? (C4019y7) interfaceC3960x72 : null;
                if (c4019y72 != null) {
                    m6465while = c4019y72.m6465while();
                }
            }
            this.f8456do = z;
        }
        z = false;
        this.f8456do = z;
    }

    @Override // defpackage.C2713ep
    /* renamed from: implements, reason: not valid java name */
    public final boolean mo4861implements() {
        return true;
    }

    @Override // defpackage.C2713ep
    /* renamed from: transient, reason: not valid java name */
    public final boolean mo4862transient() {
        return this.f8456do;
    }
}
