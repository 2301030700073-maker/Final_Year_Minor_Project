package defpackage;

import defpackage.InterfaceC0642Za;
import defpackage.InterfaceC3161jb;

/* renamed from: Ya, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC0620Ya extends P4 {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3161jb f4745do;

    /* renamed from: if, reason: not valid java name */
    public transient InterfaceC0576Wa<Object> f4746if;

    public AbstractC0620Ya(InterfaceC0576Wa<Object> interfaceC0576Wa, InterfaceC3161jb interfaceC3161jb) {
        super(interfaceC0576Wa);
        this.f4745do = interfaceC3161jb;
    }

    @Override // defpackage.P4
    /* renamed from: const */
    public void mo1744const() {
        InterfaceC0576Wa<?> interfaceC0576Wa = this.f4746if;
        if (interfaceC0576Wa != null && interfaceC0576Wa != this) {
            InterfaceC3161jb mo2221if = mo2221if();
            int i = InterfaceC0642Za.f4867do;
            InterfaceC3161jb.Cif mo814new = mo2221if.mo814new(InterfaceC0642Za.Cdo.f4868do);
            C0173Do.m398if(mo814new);
            ((InterfaceC0642Za) mo814new).l(interfaceC0576Wa);
        }
        this.f4746if = T8.f3602do;
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: if */
    public InterfaceC3161jb mo2221if() {
        InterfaceC3161jb interfaceC3161jb = this.f4745do;
        C0173Do.m398if(interfaceC3161jb);
        return interfaceC3161jb;
    }

    public AbstractC0620Ya(InterfaceC0576Wa<Object> interfaceC0576Wa) {
        this(interfaceC0576Wa, interfaceC0576Wa != null ? interfaceC0576Wa.mo2221if() : null);
    }
}
