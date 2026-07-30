package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: dm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2652dm extends AbstractC2747fM {
    public C2652dm(C0181Ea c0181Ea) {
        super(c0181Ea);
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: case */
    public final void mo1140case() {
        ((AbstractC2747fM) this).f12899do = null;
        ((AbstractC2747fM) this).f12900do.m3141for();
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: catch */
    public final boolean mo1141catch() {
        return false;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m6464const(C0702ae c0702ae) {
        C0702ae c0702ae2 = ((AbstractC2747fM) this).f12900do;
        c0702ae2.f4970do.add(c0702ae);
        c0702ae.f4977if.add(c0702ae2);
    }

    @Override // defpackage.AbstractC2747fM, defpackage.InterfaceC0535Ud
    /* renamed from: do */
    public final void mo1143do(InterfaceC0535Ud interfaceC0535Ud) {
        N4 n4 = (N4) ((AbstractC2747fM) this).f12898do;
        int i = n4.f2300static;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        Iterator it = c0702ae.f4977if.iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((C0702ae) it.next()).f4973for;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i == 0 || i == 2) {
            c0702ae.mo3143new(i3 + n4.f2301switch);
        } else {
            c0702ae.mo3143new(i2 + n4.f2301switch);
        }
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: new */
    public final void mo1144new() {
        C0181Ea c0181Ea = ((AbstractC2747fM) this).f12898do;
        if (c0181Ea instanceof N4) {
            C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
            c0702ae.f4972do = true;
            N4 n4 = (N4) c0181Ea;
            int i = n4.f2300static;
            boolean z = n4.f2299new;
            ArrayList arrayList = c0702ae.f4977if;
            int i2 = 0;
            if (i == 0) {
                c0702ae.f4968do = 4;
                while (i2 < n4.f12708return) {
                    C0181Ea c0181Ea2 = ((C2710em) n4).f12707for[i2];
                    if (z || c0181Ea2.f845import != 8) {
                        C0702ae c0702ae2 = ((AbstractC2747fM) c0181Ea2.f810do).f12900do;
                        c0702ae2.f4970do.add(c0702ae);
                        arrayList.add(c0702ae2);
                    }
                    i2++;
                }
                m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12900do);
                m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12905if);
                return;
            }
            if (i == 1) {
                c0702ae.f4968do = 5;
                while (i2 < n4.f12708return) {
                    C0181Ea c0181Ea3 = ((C2710em) n4).f12707for[i2];
                    if (z || c0181Ea3.f845import != 8) {
                        C0702ae c0702ae3 = ((AbstractC2747fM) c0181Ea3.f810do).f12905if;
                        c0702ae3.f4970do.add(c0702ae);
                        arrayList.add(c0702ae3);
                    }
                    i2++;
                }
                m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12900do);
                m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12905if);
                return;
            }
            if (i == 2) {
                c0702ae.f4968do = 6;
                while (i2 < n4.f12708return) {
                    C0181Ea c0181Ea4 = ((C2710em) n4).f12707for[i2];
                    if (z || c0181Ea4.f845import != 8) {
                        C0702ae c0702ae4 = ((AbstractC2747fM) c0181Ea4.f809do).f12900do;
                        c0702ae4.f4970do.add(c0702ae);
                        arrayList.add(c0702ae4);
                    }
                    i2++;
                }
                m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12900do);
                m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12905if);
                return;
            }
            if (i != 3) {
                return;
            }
            c0702ae.f4968do = 7;
            while (i2 < n4.f12708return) {
                C0181Ea c0181Ea5 = ((C2710em) n4).f12707for[i2];
                if (z || c0181Ea5.f845import != 8) {
                    C0702ae c0702ae5 = ((AbstractC2747fM) c0181Ea5.f809do).f12905if;
                    c0702ae5.f4970do.add(c0702ae);
                    arrayList.add(c0702ae5);
                }
                i2++;
            }
            m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12900do);
            m6464const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12905if);
        }
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: try */
    public final void mo1145try() {
        C0181Ea c0181Ea = ((AbstractC2747fM) this).f12898do;
        if (c0181Ea instanceof N4) {
            int i = ((N4) c0181Ea).f2300static;
            C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
            if (i == 0 || i == 1) {
                c0181Ea.f805const = c0702ae.f4973for;
            } else {
                c0181Ea.f826final = c0702ae.f4973for;
            }
        }
    }
}
