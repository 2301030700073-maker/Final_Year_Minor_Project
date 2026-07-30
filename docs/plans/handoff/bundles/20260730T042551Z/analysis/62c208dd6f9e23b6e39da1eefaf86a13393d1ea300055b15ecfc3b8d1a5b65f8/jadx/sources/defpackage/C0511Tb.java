package defpackage;

import java.util.ArrayList;
import java.util.Set;

/* renamed from: Tb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0511Tb implements InterfaceC3786uA {

    /* renamed from: do, reason: not valid java name */
    public final KJ f3715do;

    public C0511Tb(KJ kj) {
        this.f3715do = kj;
    }

    @Override // defpackage.InterfaceC3786uA
    /* renamed from: do, reason: not valid java name */
    public final void mo2272do(AbstractC3668sA abstractC3668sA) {
        C0173Do.m401try(abstractC3668sA, "rolloutsState");
        KJ kj = this.f3715do;
        Set<AbstractC3492pA> mo7782do = abstractC3668sA.mo7782do();
        C0173Do.m399new(mo7782do, "rolloutsState.rolloutAssignments");
        ArrayList arrayList = new ArrayList(B8.c(mo7782do));
        for (AbstractC3492pA abstractC3492pA : mo7782do) {
            String mo7541for = abstractC3492pA.mo7541for();
            String mo7540do = abstractC3492pA.mo7540do();
            String mo7542if = abstractC3492pA.mo7542if();
            String mo7544try = abstractC3492pA.mo7544try();
            long mo7543new = abstractC3492pA.mo7543new();
            C3293lp c3293lp = AbstractC3551qA.f15046do;
            arrayList.add(new C3427o4(mo7541for, mo7540do, mo7542if.length() > 256 ? mo7542if.substring(0, 256) : mo7542if, mo7544try, mo7543new));
        }
        synchronized (kj.f1789do) {
            if (kj.f1789do.m7937if(arrayList)) {
                kj.f1788do.f13736if.m6567do(new RunnableC3667s9(2, kj, kj.f1789do.m7936do()));
            }
        }
    }
}
