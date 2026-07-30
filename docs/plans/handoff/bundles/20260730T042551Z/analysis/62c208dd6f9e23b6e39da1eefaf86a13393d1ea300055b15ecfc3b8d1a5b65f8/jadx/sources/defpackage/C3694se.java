package defpackage;

import java.util.Iterator;

/* renamed from: se, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3694se extends C0702ae {

    /* renamed from: try, reason: not valid java name */
    public int f15507try;

    public C3694se(AbstractC2747fM abstractC2747fM) {
        super(abstractC2747fM);
        if (abstractC2747fM instanceof C2887hm) {
            ((C0702ae) this).f4968do = 2;
        } else {
            ((C0702ae) this).f4968do = 3;
        }
    }

    @Override // defpackage.C0702ae
    /* renamed from: new */
    public final void mo3143new(int i) {
        if (((C0702ae) this).f4974for) {
            return;
        }
        ((C0702ae) this).f4974for = true;
        ((C0702ae) this).f4973for = i;
        Iterator it = ((C0702ae) this).f4970do.iterator();
        while (it.hasNext()) {
            InterfaceC0535Ud interfaceC0535Ud = (InterfaceC0535Ud) it.next();
            interfaceC0535Ud.mo1143do(interfaceC0535Ud);
        }
    }
}
