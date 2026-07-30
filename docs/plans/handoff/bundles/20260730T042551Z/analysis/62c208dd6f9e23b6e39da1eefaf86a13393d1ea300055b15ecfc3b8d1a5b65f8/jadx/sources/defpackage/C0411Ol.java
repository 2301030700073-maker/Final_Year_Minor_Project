package defpackage;

/* renamed from: Ol, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0411Ol extends AbstractC2747fM {
    public C0411Ol(C0181Ea c0181Ea) {
        super(c0181Ea);
        c0181Ea.f810do.mo1140case();
        c0181Ea.f809do.mo1140case();
        ((AbstractC2747fM) this).f12904if = ((C0389Nl) c0181Ea).f2431switch;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: case */
    public final void mo1140case() {
        ((AbstractC2747fM) this).f12900do.m3141for();
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: catch */
    public final boolean mo1141catch() {
        return false;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m1684const(C0702ae c0702ae) {
        C0702ae c0702ae2 = ((AbstractC2747fM) this).f12900do;
        c0702ae2.f4970do.add(c0702ae);
        c0702ae.f4977if.add(c0702ae2);
    }

    @Override // defpackage.AbstractC2747fM, defpackage.InterfaceC0535Ud
    /* renamed from: do */
    public final void mo1143do(InterfaceC0535Ud interfaceC0535Ud) {
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        if (c0702ae.f4978if && !c0702ae.f4974for) {
            c0702ae.mo3143new((int) ((((C0702ae) c0702ae.f4977if.get(0)).f4973for * ((C0389Nl) ((AbstractC2747fM) this).f12898do).f2428goto) + 0.5f));
        }
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: new */
    public final void mo1144new() {
        C0181Ea c0181Ea = ((AbstractC2747fM) this).f12898do;
        C0389Nl c0389Nl = (C0389Nl) c0181Ea;
        int i = c0389Nl.f2429return;
        int i2 = c0389Nl.f2430static;
        int i3 = c0389Nl.f2431switch;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        if (i3 == 1) {
            if (i != -1) {
                c0702ae.f4977if.add(((AbstractC2747fM) c0181Ea.f808do.f810do).f12900do);
                ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f808do.f810do).f12900do.f4970do.add(c0702ae);
                c0702ae.f4975if = i;
            } else if (i2 != -1) {
                c0702ae.f4977if.add(((AbstractC2747fM) c0181Ea.f808do.f810do).f12905if);
                ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f808do.f810do).f12905if.f4970do.add(c0702ae);
                c0702ae.f4975if = -i2;
            } else {
                c0702ae.f4972do = true;
                c0702ae.f4977if.add(((AbstractC2747fM) c0181Ea.f808do.f810do).f12905if);
                ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f808do.f810do).f12905if.f4970do.add(c0702ae);
            }
            m1684const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12900do);
            m1684const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12905if);
            return;
        }
        if (i != -1) {
            c0702ae.f4977if.add(((AbstractC2747fM) c0181Ea.f808do.f809do).f12900do);
            ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f808do.f809do).f12900do.f4970do.add(c0702ae);
            c0702ae.f4975if = i;
        } else if (i2 != -1) {
            c0702ae.f4977if.add(((AbstractC2747fM) c0181Ea.f808do.f809do).f12905if);
            ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f808do.f809do).f12905if.f4970do.add(c0702ae);
            c0702ae.f4975if = -i2;
        } else {
            c0702ae.f4972do = true;
            c0702ae.f4977if.add(((AbstractC2747fM) c0181Ea.f808do.f809do).f12905if);
            ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f808do.f809do).f12905if.f4970do.add(c0702ae);
        }
        m1684const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12900do);
        m1684const(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12905if);
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: try */
    public final void mo1145try() {
        C0181Ea c0181Ea = ((AbstractC2747fM) this).f12898do;
        int i = ((C0389Nl) c0181Ea).f2431switch;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        if (i == 1) {
            c0181Ea.f805const = c0702ae.f4973for;
        } else {
            c0181Ea.f826final = c0702ae.f4973for;
        }
    }
}
