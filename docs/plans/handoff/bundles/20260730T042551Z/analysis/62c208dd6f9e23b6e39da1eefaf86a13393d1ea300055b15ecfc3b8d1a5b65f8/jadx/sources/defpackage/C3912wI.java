package defpackage;

import java.util.Set;

/* renamed from: wI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3912wI implements InterfaceC3853vI {

    /* renamed from: do, reason: not valid java name */
    public final Set<C0823cg> f16312do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3794uI f16313do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC4089zI f16314do;

    public C3912wI(Set set, C4075z4 c4075z4, InterfaceC4089zI interfaceC4089zI) {
        this.f16312do = set;
        this.f16313do = c4075z4;
        this.f16314do = interfaceC4089zI;
    }

    @Override // defpackage.InterfaceC3853vI
    /* renamed from: do */
    public final C3971xI mo8467do(String str, C0823cg c0823cg, InterfaceC3146jI interfaceC3146jI) {
        Set<C0823cg> set = this.f16312do;
        if (set.contains(c0823cg)) {
            return new C3971xI(this.f16313do, str, c0823cg, interfaceC3146jI, this.f16314do);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", c0823cg, set));
    }
}
