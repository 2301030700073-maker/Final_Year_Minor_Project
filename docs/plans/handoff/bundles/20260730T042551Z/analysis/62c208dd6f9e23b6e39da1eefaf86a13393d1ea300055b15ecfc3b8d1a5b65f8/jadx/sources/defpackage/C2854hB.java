package defpackage;

import defpackage.InterfaceC0634Yo;
import defpackage.InterfaceC3161jb;

/* renamed from: hB, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2854hB extends AbstractC0459Qp implements InterfaceC3641rk<Integer, InterfaceC3161jb.Cif, Integer> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C2736fB<?> f13257do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2854hB(C2736fB<?> c2736fB) {
        super(2);
        this.f13257do = c2736fB;
    }

    @Override // defpackage.InterfaceC3641rk
    public final Integer invoke(Integer num, InterfaceC3161jb.Cif cif) {
        int intValue = num.intValue();
        InterfaceC3161jb.Cif cif2 = cif;
        InterfaceC3161jb.Cfor<?> mo6576break = cif2.mo6576break();
        InterfaceC3161jb.Cif mo814new = this.f13257do.f12852if.mo814new(mo6576break);
        int i = InterfaceC0634Yo.f4762if;
        if (mo6576break != InterfaceC0634Yo.Cif.f4763do) {
            return Integer.valueOf(cif2 != mo814new ? Integer.MIN_VALUE : intValue + 1);
        }
        InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) mo814new;
        InterfaceC0634Yo interfaceC0634Yo2 = (InterfaceC0634Yo) cif2;
        while (true) {
            if (interfaceC0634Yo2 != null) {
                if (interfaceC0634Yo2 == interfaceC0634Yo || !(interfaceC0634Yo2 instanceof KB)) {
                    break;
                }
                interfaceC0634Yo2 = interfaceC0634Yo2.mo2954do();
            } else {
                interfaceC0634Yo2 = null;
                break;
            }
        }
        if (interfaceC0634Yo2 == interfaceC0634Yo) {
            if (interfaceC0634Yo != null) {
                intValue++;
            }
            return Integer.valueOf(intValue);
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + interfaceC0634Yo2 + ", expected child of " + interfaceC0634Yo + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }
}
