package defpackage;

import defpackage.C0181Ea;
import defpackage.C3985xa;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class KK extends AbstractC2747fM {

    /* renamed from: do, reason: not valid java name */
    public C2671e5 f1795do;

    /* renamed from: for, reason: not valid java name */
    public final C0702ae f1796for;

    public KK(C0181Ea c0181Ea) {
        super(c0181Ea);
        C0702ae c0702ae = new C0702ae(this);
        this.f1796for = c0702ae;
        this.f1795do = null;
        ((AbstractC2747fM) this).f12900do.f4968do = 6;
        ((AbstractC2747fM) this).f12905if.f4968do = 7;
        c0702ae.f4968do = 8;
        ((AbstractC2747fM) this).f12904if = 1;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: case, reason: not valid java name */
    public final void mo1140case() {
        ((AbstractC2747fM) this).f12899do = null;
        ((AbstractC2747fM) this).f12900do.m3141for();
        ((AbstractC2747fM) this).f12905if.m3141for();
        this.f1796for.m3141for();
        ((AbstractC2747fM) this).f12901do.m3141for();
        ((AbstractC2747fM) this).f12902do = false;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: catch, reason: not valid java name */
    public final boolean mo1141catch() {
        return ((AbstractC2747fM) this).f12897do != C0181Ea.Cdo.MATCH_CONSTRAINT || ((AbstractC2747fM) this).f12898do.f848new == 0;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m1142const() {
        ((AbstractC2747fM) this).f12902do = false;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        c0702ae.m3141for();
        c0702ae.f4974for = false;
        C0702ae c0702ae2 = ((AbstractC2747fM) this).f12905if;
        c0702ae2.m3141for();
        c0702ae2.f4974for = false;
        C0702ae c0702ae3 = this.f1796for;
        c0702ae3.m3141for();
        c0702ae3.f4974for = false;
        ((C0702ae) ((AbstractC2747fM) this).f12901do).f4974for = false;
    }

    @Override // defpackage.AbstractC2747fM, defpackage.InterfaceC0535Ud
    /* renamed from: do, reason: not valid java name */
    public final void mo1143do(InterfaceC0535Ud interfaceC0535Ud) {
        float f;
        float f2;
        float f3;
        int i;
        if (C4122zt.m8819catch(super.f12903for) == 3) {
            C0181Ea c0181Ea = ((AbstractC2747fM) this).f12898do;
            m6657class(c0181Ea.f840if, c0181Ea.f849new, 1);
            return;
        }
        C3694se c3694se = ((AbstractC2747fM) this).f12901do;
        boolean z = ((C0702ae) c3694se).f4978if;
        C0181Ea.Cdo cdo = C0181Ea.Cdo.MATCH_CONSTRAINT;
        if (z && !((C0702ae) c3694se).f4974for && ((AbstractC2747fM) this).f12897do == cdo) {
            C0181Ea c0181Ea2 = ((AbstractC2747fM) this).f12898do;
            int i2 = c0181Ea2.f848new;
            if (i2 == 2) {
                C0181Ea c0181Ea3 = c0181Ea2.f808do;
                if (c0181Ea3 != null) {
                    if (((C0702ae) ((AbstractC2747fM) c0181Ea3.f809do).f12901do).f4974for) {
                        c3694se.mo3143new((int) ((((C0702ae) r1).f4973for * c0181Ea2.f835if) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                C3694se c3694se2 = ((AbstractC2747fM) c0181Ea2.f810do).f12901do;
                if (((C0702ae) c3694se2).f4974for) {
                    int i3 = c0181Ea2.f804class;
                    if (i3 == -1) {
                        f = ((C0702ae) c3694se2).f4973for;
                        f2 = c0181Ea2.f854try;
                    } else if (i3 == 0) {
                        f3 = ((C0702ae) c3694se2).f4973for * c0181Ea2.f854try;
                        i = (int) (f3 + 0.5f);
                        c3694se.mo3143new(i);
                    } else if (i3 != 1) {
                        i = 0;
                        c3694se.mo3143new(i);
                    } else {
                        f = ((C0702ae) c3694se2).f4973for;
                        f2 = c0181Ea2.f854try;
                    }
                    f3 = f / f2;
                    i = (int) (f3 + 0.5f);
                    c3694se.mo3143new(i);
                }
            }
        }
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        if (c0702ae.f4978if) {
            C0702ae c0702ae2 = ((AbstractC2747fM) this).f12905if;
            if (c0702ae2.f4978if) {
                if (c0702ae.f4974for && c0702ae2.f4974for && ((C0702ae) c3694se).f4974for) {
                    return;
                }
                boolean z2 = ((C0702ae) c3694se).f4974for;
                ArrayList arrayList = c0702ae.f4977if;
                ArrayList arrayList2 = c0702ae2.f4977if;
                if (!z2 && ((AbstractC2747fM) this).f12897do == cdo) {
                    C0181Ea c0181Ea4 = ((AbstractC2747fM) this).f12898do;
                    if (c0181Ea4.f828for == 0 && !c0181Ea4.m477static()) {
                        C0702ae c0702ae3 = (C0702ae) arrayList.get(0);
                        C0702ae c0702ae4 = (C0702ae) arrayList2.get(0);
                        int i4 = c0702ae3.f4973for + c0702ae.f4975if;
                        int i5 = c0702ae4.f4973for + c0702ae2.f4975if;
                        c0702ae.mo3143new(i4);
                        c0702ae2.mo3143new(i5);
                        c3694se.mo3143new(i5 - i4);
                        return;
                    }
                }
                if (!((C0702ae) c3694se).f4974for && ((AbstractC2747fM) this).f12897do == cdo && ((AbstractC2747fM) this).f12896do == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                    C0702ae c0702ae5 = (C0702ae) arrayList.get(0);
                    int i6 = (((C0702ae) arrayList2.get(0)).f4973for + c0702ae2.f4975if) - (c0702ae5.f4973for + c0702ae.f4975if);
                    int i7 = c3694se.f15507try;
                    if (i6 < i7) {
                        c3694se.mo3143new(i6);
                    } else {
                        c3694se.mo3143new(i7);
                    }
                }
                if (((C0702ae) c3694se).f4974for && arrayList.size() > 0 && arrayList2.size() > 0) {
                    C0702ae c0702ae6 = (C0702ae) arrayList.get(0);
                    C0702ae c0702ae7 = (C0702ae) arrayList2.get(0);
                    int i8 = c0702ae6.f4973for;
                    int i9 = c0702ae.f4975if + i8;
                    int i10 = c0702ae7.f4973for;
                    int i11 = c0702ae2.f4975if + i10;
                    float f4 = ((AbstractC2747fM) this).f12898do.f823else;
                    if (c0702ae6 == c0702ae7) {
                        f4 = 0.5f;
                    } else {
                        i8 = i9;
                        i10 = i11;
                    }
                    c0702ae.mo3143new((int) ((((i10 - i8) - ((C0702ae) c3694se).f4973for) * f4) + i8 + 0.5f));
                    c0702ae2.mo3143new(c0702ae.f4973for + ((C0702ae) c3694se).f4973for);
                }
            }
        }
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: new, reason: not valid java name */
    public final void mo1144new() {
        C0181Ea c0181Ea;
        C0181Ea c0181Ea2;
        C0181Ea c0181Ea3;
        C0181Ea c0181Ea4;
        C0181Ea c0181Ea5 = ((AbstractC2747fM) this).f12898do;
        boolean z = c0181Ea5.f816do;
        C3694se c3694se = ((AbstractC2747fM) this).f12901do;
        if (z) {
            c3694se.mo3143new(c0181Ea5.m462const());
        }
        boolean z2 = ((C0702ae) c3694se).f4974for;
        C0181Ea.Cdo cdo = C0181Ea.Cdo.MATCH_PARENT;
        C0181Ea.Cdo cdo2 = C0181Ea.Cdo.FIXED;
        C0181Ea.Cdo cdo3 = C0181Ea.Cdo.MATCH_CONSTRAINT;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12905if;
        C0702ae c0702ae2 = ((AbstractC2747fM) this).f12900do;
        if (!z2) {
            C0181Ea c0181Ea6 = ((AbstractC2747fM) this).f12898do;
            ((AbstractC2747fM) this).f12897do = c0181Ea6.f819do[1];
            if (c0181Ea6.f841if) {
                this.f1795do = new C2671e5(this);
            }
            C0181Ea.Cdo cdo4 = ((AbstractC2747fM) this).f12897do;
            if (cdo4 != cdo3) {
                if (cdo4 == cdo && (c0181Ea4 = ((AbstractC2747fM) this).f12898do.f808do) != null && c0181Ea4.f819do[1] == cdo2) {
                    int m462const = (c0181Ea4.m462const() - ((AbstractC2747fM) this).f12898do.f840if.m8646for()) - ((AbstractC2747fM) this).f12898do.f849new.m8646for();
                    KK kk = c0181Ea4.f809do;
                    AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) kk).f12900do, ((AbstractC2747fM) this).f12898do.f840if.m8646for());
                    AbstractC2747fM.m6654if(c0702ae, ((AbstractC2747fM) kk).f12905if, -((AbstractC2747fM) this).f12898do.f849new.m8646for());
                    c3694se.mo3143new(m462const);
                    return;
                }
                if (cdo4 == cdo2) {
                    c3694se.mo3143new(((AbstractC2747fM) this).f12898do.m462const());
                }
            }
        } else if (((AbstractC2747fM) this).f12897do == cdo && (c0181Ea2 = (c0181Ea = ((AbstractC2747fM) this).f12898do).f808do) != null && c0181Ea2.f819do[1] == cdo2) {
            KK kk2 = c0181Ea2.f809do;
            AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) kk2).f12900do, c0181Ea.f840if.m8646for());
            AbstractC2747fM.m6654if(c0702ae, ((AbstractC2747fM) kk2).f12905if, -((AbstractC2747fM) this).f12898do.f849new.m8646for());
            return;
        }
        boolean z3 = ((C0702ae) c3694se).f4974for;
        C0702ae c0702ae3 = this.f1796for;
        if (z3) {
            C0181Ea c0181Ea7 = ((AbstractC2747fM) this).f12898do;
            if (c0181Ea7.f816do) {
                C3985xa[] c3985xaArr = c0181Ea7.f821do;
                C3985xa c3985xa = c3985xaArr[2];
                C3985xa c3985xa2 = c3985xa.f16569do;
                if (c3985xa2 != null && c3985xaArr[3].f16569do != null) {
                    if (c0181Ea7.m477static()) {
                        c0702ae2.f4975if = ((AbstractC2747fM) this).f12898do.f821do[2].m8646for();
                        c0702ae.f4975if = -((AbstractC2747fM) this).f12898do.f821do[3].m8646for();
                    } else {
                        C0702ae m6653goto = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[2]);
                        if (m6653goto != null) {
                            AbstractC2747fM.m6654if(c0702ae2, m6653goto, ((AbstractC2747fM) this).f12898do.f821do[2].m8646for());
                        }
                        C0702ae m6653goto2 = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[3]);
                        if (m6653goto2 != null) {
                            AbstractC2747fM.m6654if(c0702ae, m6653goto2, -((AbstractC2747fM) this).f12898do.f821do[3].m8646for());
                        }
                        c0702ae2.f4972do = true;
                        c0702ae.f4972do = true;
                    }
                    C0181Ea c0181Ea8 = ((AbstractC2747fM) this).f12898do;
                    if (c0181Ea8.f841if) {
                        AbstractC2747fM.m6654if(c0702ae3, c0702ae2, c0181Ea8.f851super);
                        return;
                    }
                    return;
                }
                if (c3985xa2 != null) {
                    C0702ae m6653goto3 = AbstractC2747fM.m6653goto(c3985xa);
                    if (m6653goto3 != null) {
                        AbstractC2747fM.m6654if(c0702ae2, m6653goto3, ((AbstractC2747fM) this).f12898do.f821do[2].m8646for());
                        AbstractC2747fM.m6654if(c0702ae, c0702ae2, ((C0702ae) c3694se).f4973for);
                        C0181Ea c0181Ea9 = ((AbstractC2747fM) this).f12898do;
                        if (c0181Ea9.f841if) {
                            AbstractC2747fM.m6654if(c0702ae3, c0702ae2, c0181Ea9.f851super);
                            return;
                        }
                        return;
                    }
                    return;
                }
                C3985xa c3985xa3 = c3985xaArr[3];
                if (c3985xa3.f16569do != null) {
                    C0702ae m6653goto4 = AbstractC2747fM.m6653goto(c3985xa3);
                    if (m6653goto4 != null) {
                        AbstractC2747fM.m6654if(c0702ae, m6653goto4, -((AbstractC2747fM) this).f12898do.f821do[3].m8646for());
                        AbstractC2747fM.m6654if(c0702ae2, c0702ae, -((C0702ae) c3694se).f4973for);
                    }
                    C0181Ea c0181Ea10 = ((AbstractC2747fM) this).f12898do;
                    if (c0181Ea10.f841if) {
                        AbstractC2747fM.m6654if(c0702ae3, c0702ae2, c0181Ea10.f851super);
                        return;
                    }
                    return;
                }
                C3985xa c3985xa4 = c3985xaArr[4];
                if (c3985xa4.f16569do != null) {
                    C0702ae m6653goto5 = AbstractC2747fM.m6653goto(c3985xa4);
                    if (m6653goto5 != null) {
                        AbstractC2747fM.m6654if(c0702ae3, m6653goto5, 0);
                        AbstractC2747fM.m6654if(c0702ae2, c0702ae3, -((AbstractC2747fM) this).f12898do.f851super);
                        AbstractC2747fM.m6654if(c0702ae, c0702ae2, ((C0702ae) c3694se).f4973for);
                        return;
                    }
                    return;
                }
                if ((c0181Ea7 instanceof InterfaceC0829cm) || c0181Ea7.f808do == null || c0181Ea7.mo460catch(C3985xa.Cdo.CENTER).f16569do != null) {
                    return;
                }
                C0181Ea c0181Ea11 = ((AbstractC2747fM) this).f12898do;
                AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) c0181Ea11.f808do.f809do).f12900do, c0181Ea11.m470import());
                AbstractC2747fM.m6654if(c0702ae, c0702ae2, ((C0702ae) c3694se).f4973for);
                C0181Ea c0181Ea12 = ((AbstractC2747fM) this).f12898do;
                if (c0181Ea12.f841if) {
                    AbstractC2747fM.m6654if(c0702ae3, c0702ae2, c0181Ea12.f851super);
                    return;
                }
                return;
            }
        }
        ArrayList arrayList = ((C0702ae) c3694se).f4977if;
        if (z3 || ((AbstractC2747fM) this).f12897do != cdo3) {
            c3694se.m3142if(this);
        } else {
            C0181Ea c0181Ea13 = ((AbstractC2747fM) this).f12898do;
            int i = c0181Ea13.f848new;
            ArrayList arrayList2 = ((C0702ae) c3694se).f4970do;
            if (i == 2) {
                C0181Ea c0181Ea14 = c0181Ea13.f808do;
                if (c0181Ea14 != null) {
                    C3694se c3694se2 = ((AbstractC2747fM) c0181Ea14.f809do).f12901do;
                    arrayList.add(c3694se2);
                    ((C0702ae) c3694se2).f4970do.add(c3694se);
                    ((C0702ae) c3694se).f4972do = true;
                    arrayList2.add(c0702ae2);
                    arrayList2.add(c0702ae);
                }
            } else if (i == 3 && !c0181Ea13.m477static()) {
                C0181Ea c0181Ea15 = ((AbstractC2747fM) this).f12898do;
                if (c0181Ea15.f828for != 3) {
                    C3694se c3694se3 = ((AbstractC2747fM) c0181Ea15.f810do).f12901do;
                    arrayList.add(c3694se3);
                    ((C0702ae) c3694se3).f4970do.add(c3694se);
                    ((C0702ae) c3694se).f4972do = true;
                    arrayList2.add(c0702ae2);
                    arrayList2.add(c0702ae);
                }
            }
        }
        C0181Ea c0181Ea16 = ((AbstractC2747fM) this).f12898do;
        C3985xa[] c3985xaArr2 = c0181Ea16.f821do;
        C3985xa c3985xa5 = c3985xaArr2[2];
        C3985xa c3985xa6 = c3985xa5.f16569do;
        if (c3985xa6 != null && c3985xaArr2[3].f16569do != null) {
            if (c0181Ea16.m477static()) {
                c0702ae2.f4975if = ((AbstractC2747fM) this).f12898do.f821do[2].m8646for();
                c0702ae.f4975if = -((AbstractC2747fM) this).f12898do.f821do[3].m8646for();
            } else {
                C0702ae m6653goto6 = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[2]);
                C0702ae m6653goto7 = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[3]);
                m6653goto6.m3142if(this);
                m6653goto7.m3142if(this);
                super.f12903for = 4;
            }
            if (((AbstractC2747fM) this).f12898do.f841if) {
                m6659for(c0702ae3, c0702ae2, 1, this.f1795do);
            }
        } else if (c3985xa6 != null) {
            C0702ae m6653goto8 = AbstractC2747fM.m6653goto(c3985xa5);
            if (m6653goto8 != null) {
                AbstractC2747fM.m6654if(c0702ae2, m6653goto8, ((AbstractC2747fM) this).f12898do.f821do[2].m8646for());
                m6659for(c0702ae, c0702ae2, 1, c3694se);
                if (((AbstractC2747fM) this).f12898do.f841if) {
                    m6659for(c0702ae3, c0702ae2, 1, this.f1795do);
                }
                if (((AbstractC2747fM) this).f12897do == cdo3) {
                    C0181Ea c0181Ea17 = ((AbstractC2747fM) this).f12898do;
                    if (c0181Ea17.f854try > 0.0f) {
                        C2887hm c2887hm = c0181Ea17.f810do;
                        if (((AbstractC2747fM) c2887hm).f12897do == cdo3) {
                            ((C0702ae) ((AbstractC2747fM) c2887hm).f12901do).f4970do.add(c3694se);
                            arrayList.add(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12901do);
                            ((C0702ae) c3694se).f4969do = this;
                        }
                    }
                }
            }
        } else {
            C3985xa c3985xa7 = c3985xaArr2[3];
            if (c3985xa7.f16569do != null) {
                C0702ae m6653goto9 = AbstractC2747fM.m6653goto(c3985xa7);
                if (m6653goto9 != null) {
                    AbstractC2747fM.m6654if(c0702ae, m6653goto9, -((AbstractC2747fM) this).f12898do.f821do[3].m8646for());
                    m6659for(c0702ae2, c0702ae, -1, c3694se);
                    if (((AbstractC2747fM) this).f12898do.f841if) {
                        m6659for(c0702ae3, c0702ae2, 1, this.f1795do);
                    }
                }
            } else {
                C3985xa c3985xa8 = c3985xaArr2[4];
                if (c3985xa8.f16569do != null) {
                    C0702ae m6653goto10 = AbstractC2747fM.m6653goto(c3985xa8);
                    if (m6653goto10 != null) {
                        AbstractC2747fM.m6654if(c0702ae3, m6653goto10, 0);
                        m6659for(c0702ae2, c0702ae3, -1, this.f1795do);
                        m6659for(c0702ae, c0702ae2, 1, c3694se);
                    }
                } else if (!(c0181Ea16 instanceof InterfaceC0829cm) && (c0181Ea3 = c0181Ea16.f808do) != null) {
                    AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) c0181Ea3.f809do).f12900do, c0181Ea16.m470import());
                    m6659for(c0702ae, c0702ae2, 1, c3694se);
                    if (((AbstractC2747fM) this).f12898do.f841if) {
                        m6659for(c0702ae3, c0702ae2, 1, this.f1795do);
                    }
                    if (((AbstractC2747fM) this).f12897do == cdo3) {
                        C0181Ea c0181Ea18 = ((AbstractC2747fM) this).f12898do;
                        if (c0181Ea18.f854try > 0.0f) {
                            C2887hm c2887hm2 = c0181Ea18.f810do;
                            if (((AbstractC2747fM) c2887hm2).f12897do == cdo3) {
                                ((C0702ae) ((AbstractC2747fM) c2887hm2).f12901do).f4970do.add(c3694se);
                                arrayList.add(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f810do).f12901do);
                                ((C0702ae) c3694se).f4969do = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            ((C0702ae) c3694se).f4978if = true;
        }
    }

    public final String toString() {
        return "VerticalRun " + ((AbstractC2747fM) this).f12898do.f812do;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: try, reason: not valid java name */
    public final void mo1145try() {
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        if (c0702ae.f4974for) {
            ((AbstractC2747fM) this).f12898do.f826final = c0702ae.f4973for;
        }
    }
}
