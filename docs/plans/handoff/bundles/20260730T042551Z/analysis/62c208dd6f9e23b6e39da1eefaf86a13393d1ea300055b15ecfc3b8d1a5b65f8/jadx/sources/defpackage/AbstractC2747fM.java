package defpackage;

import defpackage.C0181Ea;

/* renamed from: fM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC2747fM implements InterfaceC0535Ud {

    /* renamed from: do, reason: not valid java name */
    public int f12896do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0181Ea.Cdo f12897do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0181Ea f12898do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VA f12899do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3694se f12901do = new C3694se(this);

    /* renamed from: if, reason: not valid java name */
    public int f12904if = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12902do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0702ae f12900do = new C0702ae(this);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final C0702ae f12905if = new C0702ae(this);

    /* renamed from: for, reason: not valid java name */
    public int f12903for = 1;

    public AbstractC2747fM(C0181Ea c0181Ea) {
        this.f12898do = c0181Ea;
    }

    /* renamed from: goto, reason: not valid java name */
    public static C0702ae m6653goto(C3985xa c3985xa) {
        C3985xa c3985xa2 = c3985xa.f16569do;
        if (c3985xa2 == null) {
            return null;
        }
        int ordinal = c3985xa2.f16568do.ordinal();
        C0181Ea c0181Ea = c3985xa2.f16565do;
        if (ordinal == 1) {
            return ((AbstractC2747fM) c0181Ea.f810do).f12900do;
        }
        if (ordinal == 2) {
            return ((AbstractC2747fM) c0181Ea.f809do).f12900do;
        }
        if (ordinal == 3) {
            return ((AbstractC2747fM) c0181Ea.f810do).f12905if;
        }
        if (ordinal == 4) {
            return ((AbstractC2747fM) c0181Ea.f809do).f12905if;
        }
        if (ordinal != 5) {
            return null;
        }
        return c0181Ea.f809do.f1796for;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m6654if(C0702ae c0702ae, C0702ae c0702ae2, int i) {
        c0702ae.f4977if.add(c0702ae2);
        c0702ae.f4975if = i;
        c0702ae2.f4970do.add(c0702ae);
    }

    /* renamed from: this, reason: not valid java name */
    public static C0702ae m6655this(C3985xa c3985xa, int i) {
        C3985xa c3985xa2 = c3985xa.f16569do;
        if (c3985xa2 == null) {
            return null;
        }
        C0181Ea c0181Ea = c3985xa2.f16565do;
        AbstractC2747fM abstractC2747fM = i == 0 ? c0181Ea.f810do : c0181Ea.f809do;
        int ordinal = c3985xa2.f16568do.ordinal();
        if (ordinal == 1 || ordinal == 2) {
            return abstractC2747fM.f12900do;
        }
        if (ordinal == 3 || ordinal == 4) {
            return abstractC2747fM.f12905if;
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public long mo6656break() {
        if (((C0702ae) this.f12901do).f4974for) {
            return ((C0702ae) r0).f4973for;
        }
        return 0L;
    }

    /* renamed from: case */
    public abstract void mo1140case();

    /* renamed from: catch */
    public abstract boolean mo1141catch();

    /* renamed from: class, reason: not valid java name */
    public final void m6657class(C3985xa c3985xa, C3985xa c3985xa2, int i) {
        C0702ae m6653goto = m6653goto(c3985xa);
        C0702ae m6653goto2 = m6653goto(c3985xa2);
        if (m6653goto.f4974for && m6653goto2.f4974for) {
            int m8646for = c3985xa.m8646for() + m6653goto.f4973for;
            int m8646for2 = m6653goto2.f4973for - c3985xa2.m8646for();
            int i2 = m8646for2 - m8646for;
            C3694se c3694se = this.f12901do;
            if (!((C0702ae) c3694se).f4974for) {
                C0181Ea.Cdo cdo = this.f12897do;
                C0181Ea.Cdo cdo2 = C0181Ea.Cdo.MATCH_CONSTRAINT;
                if (cdo == cdo2) {
                    int i3 = this.f12896do;
                    if (i3 == 0) {
                        c3694se.mo3143new(m6658else(i2, i));
                    } else if (i3 == 1) {
                        c3694se.mo3143new(Math.min(m6658else(c3694se.f15507try, i), i2));
                    } else if (i3 == 2) {
                        C0181Ea c0181Ea = this.f12898do;
                        C0181Ea c0181Ea2 = c0181Ea.f808do;
                        if (c0181Ea2 != null) {
                            if (((C0702ae) (i == 0 ? c0181Ea2.f810do : c0181Ea2.f809do).f12901do).f4974for) {
                                c3694se.mo3143new(m6658else((int) ((((C0702ae) r6).f4973for * (i == 0 ? c0181Ea.f806do : c0181Ea.f835if)) + 0.5f), i));
                            }
                        }
                    } else if (i3 == 3) {
                        C0181Ea c0181Ea3 = this.f12898do;
                        AbstractC2747fM abstractC2747fM = c0181Ea3.f810do;
                        C0181Ea.Cdo cdo3 = abstractC2747fM.f12897do;
                        AbstractC2747fM abstractC2747fM2 = c0181Ea3.f809do;
                        if (cdo3 != cdo2 || abstractC2747fM.f12896do != 3 || abstractC2747fM2.f12897do != cdo2 || abstractC2747fM2.f12896do != 3) {
                            if (i == 0) {
                                abstractC2747fM = abstractC2747fM2;
                            }
                            if (((C0702ae) abstractC2747fM.f12901do).f4974for) {
                                float f = c0181Ea3.f854try;
                                c3694se.mo3143new(i == 1 ? (int) ((((C0702ae) r6).f4973for / f) + 0.5f) : (int) ((f * ((C0702ae) r6).f4973for) + 0.5f));
                            }
                        }
                    }
                }
            }
            if (((C0702ae) c3694se).f4974for) {
                int i4 = ((C0702ae) c3694se).f4973for;
                C0702ae c0702ae = this.f12905if;
                C0702ae c0702ae2 = this.f12900do;
                if (i4 == i2) {
                    c0702ae2.mo3143new(m8646for);
                    c0702ae.mo3143new(m8646for2);
                    return;
                }
                C0181Ea c0181Ea4 = this.f12898do;
                float f2 = i == 0 ? c0181Ea4.f800case : c0181Ea4.f823else;
                if (m6653goto == m6653goto2) {
                    m8646for = m6653goto.f4973for;
                    m8646for2 = m6653goto2.f4973for;
                    f2 = 0.5f;
                }
                c0702ae2.mo3143new((int) ((((m8646for2 - m8646for) - i4) * f2) + m8646for + 0.5f));
                c0702ae.mo3143new(c0702ae2.f4973for + ((C0702ae) c3694se).f4973for);
            }
        }
    }

    @Override // defpackage.InterfaceC0535Ud
    /* renamed from: do */
    public void mo1143do(InterfaceC0535Ud interfaceC0535Ud) {
    }

    /* renamed from: else, reason: not valid java name */
    public final int m6658else(int i, int i2) {
        int max;
        if (i2 == 0) {
            C0181Ea c0181Ea = this.f12898do;
            int i3 = c0181Ea.f801case;
            max = Math.max(c0181Ea.f855try, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            C0181Ea c0181Ea2 = this.f12898do;
            int i4 = c0181Ea2.f833goto;
            max = Math.max(c0181Ea2.f824else, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6659for(C0702ae c0702ae, C0702ae c0702ae2, int i, C3694se c3694se) {
        c0702ae.f4977if.add(c0702ae2);
        c0702ae.f4977if.add(this.f12901do);
        c0702ae.f4979new = i;
        c0702ae.f4971do = c3694se;
        c0702ae2.f4970do.add(c0702ae);
        ((C0702ae) c3694se).f4970do.add(c0702ae);
    }

    /* renamed from: new */
    public abstract void mo1144new();

    /* renamed from: try */
    public abstract void mo1145try();
}
