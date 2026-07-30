package defpackage;

import defpackage.C0181Ea;
import defpackage.C3985xa;
import java.util.ArrayList;

/* renamed from: hm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2887hm extends AbstractC2747fM {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f13355do = new int[2];

    public C2887hm(C0181Ea c0181Ea) {
        super(c0181Ea);
        ((AbstractC2747fM) this).f12900do.f4968do = 4;
        ((AbstractC2747fM) this).f12905if.f4968do = 5;
        ((AbstractC2747fM) this).f12904if = 0;
    }

    /* renamed from: const, reason: not valid java name */
    public static void m6835const(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: case */
    public final void mo1140case() {
        ((AbstractC2747fM) this).f12899do = null;
        ((AbstractC2747fM) this).f12900do.m3141for();
        ((AbstractC2747fM) this).f12905if.m3141for();
        ((AbstractC2747fM) this).f12901do.m3141for();
        ((AbstractC2747fM) this).f12902do = false;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: catch */
    public final boolean mo1141catch() {
        return ((AbstractC2747fM) this).f12897do != C0181Ea.Cdo.MATCH_CONSTRAINT || ((AbstractC2747fM) this).f12898do.f828for == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0246, code lost:
    
        if (r9 != 1) goto L128;
     */
    @Override // defpackage.AbstractC2747fM, defpackage.InterfaceC0535Ud
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1143do(defpackage.InterfaceC0535Ud r24) {
        /*
            Method dump skipped, instructions count: 908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2887hm.mo1143do(Ud):void");
    }

    /* renamed from: final, reason: not valid java name */
    public final void m6836final() {
        ((AbstractC2747fM) this).f12902do = false;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        c0702ae.m3141for();
        c0702ae.f4974for = false;
        C0702ae c0702ae2 = ((AbstractC2747fM) this).f12905if;
        c0702ae2.m3141for();
        c0702ae2.f4974for = false;
        ((C0702ae) ((AbstractC2747fM) this).f12901do).f4974for = false;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: new */
    public final void mo1144new() {
        C0181Ea c0181Ea;
        C0181Ea c0181Ea2;
        C0181Ea c0181Ea3;
        C0181Ea c0181Ea4;
        C0181Ea c0181Ea5 = ((AbstractC2747fM) this).f12898do;
        boolean z = c0181Ea5.f816do;
        C3694se c3694se = ((AbstractC2747fM) this).f12901do;
        if (z) {
            c3694se.mo3143new(c0181Ea5.m481throw());
        }
        boolean z2 = ((C0702ae) c3694se).f4974for;
        C0181Ea.Cdo cdo = C0181Ea.Cdo.MATCH_CONSTRAINT;
        C0181Ea.Cdo cdo2 = C0181Ea.Cdo.MATCH_PARENT;
        C0181Ea.Cdo cdo3 = C0181Ea.Cdo.FIXED;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12905if;
        C0702ae c0702ae2 = ((AbstractC2747fM) this).f12900do;
        if (!z2) {
            C0181Ea c0181Ea6 = ((AbstractC2747fM) this).f12898do;
            C0181Ea.Cdo cdo4 = c0181Ea6.f819do[0];
            ((AbstractC2747fM) this).f12897do = cdo4;
            if (cdo4 != cdo) {
                if (cdo4 == cdo2 && (((c0181Ea4 = c0181Ea6.f808do) != null && c0181Ea4.f819do[0] == cdo3) || c0181Ea4.f819do[0] == cdo2)) {
                    int m481throw = (c0181Ea4.m481throw() - ((AbstractC2747fM) this).f12898do.f815do.m8646for()) - ((AbstractC2747fM) this).f12898do.f830for.m8646for();
                    C2887hm c2887hm = c0181Ea4.f810do;
                    AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) c2887hm).f12900do, ((AbstractC2747fM) this).f12898do.f815do.m8646for());
                    AbstractC2747fM.m6654if(c0702ae, ((AbstractC2747fM) c2887hm).f12905if, -((AbstractC2747fM) this).f12898do.f830for.m8646for());
                    c3694se.mo3143new(m481throw);
                    return;
                }
                if (cdo4 == cdo3) {
                    c3694se.mo3143new(c0181Ea6.m481throw());
                }
            }
        } else if (((AbstractC2747fM) this).f12897do == cdo2 && (((c0181Ea2 = (c0181Ea = ((AbstractC2747fM) this).f12898do).f808do) != null && c0181Ea2.f819do[0] == cdo3) || c0181Ea2.f819do[0] == cdo2)) {
            AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) c0181Ea2.f810do).f12900do, c0181Ea.f815do.m8646for());
            AbstractC2747fM.m6654if(c0702ae, ((AbstractC2747fM) c0181Ea2.f810do).f12905if, -((AbstractC2747fM) this).f12898do.f830for.m8646for());
            return;
        }
        if (((C0702ae) c3694se).f4974for) {
            C0181Ea c0181Ea7 = ((AbstractC2747fM) this).f12898do;
            if (c0181Ea7.f816do) {
                C3985xa[] c3985xaArr = c0181Ea7.f821do;
                C3985xa c3985xa = c3985xaArr[0];
                C3985xa c3985xa2 = c3985xa.f16569do;
                if (c3985xa2 != null && c3985xaArr[1].f16569do != null) {
                    if (c0181Ea7.m476return()) {
                        c0702ae2.f4975if = ((AbstractC2747fM) this).f12898do.f821do[0].m8646for();
                        c0702ae.f4975if = -((AbstractC2747fM) this).f12898do.f821do[1].m8646for();
                        return;
                    }
                    C0702ae m6653goto = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[0]);
                    if (m6653goto != null) {
                        AbstractC2747fM.m6654if(c0702ae2, m6653goto, ((AbstractC2747fM) this).f12898do.f821do[0].m8646for());
                    }
                    C0702ae m6653goto2 = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[1]);
                    if (m6653goto2 != null) {
                        AbstractC2747fM.m6654if(c0702ae, m6653goto2, -((AbstractC2747fM) this).f12898do.f821do[1].m8646for());
                    }
                    c0702ae2.f4972do = true;
                    c0702ae.f4972do = true;
                    return;
                }
                if (c3985xa2 != null) {
                    C0702ae m6653goto3 = AbstractC2747fM.m6653goto(c3985xa);
                    if (m6653goto3 != null) {
                        AbstractC2747fM.m6654if(c0702ae2, m6653goto3, ((AbstractC2747fM) this).f12898do.f821do[0].m8646for());
                        AbstractC2747fM.m6654if(c0702ae, c0702ae2, ((C0702ae) c3694se).f4973for);
                        return;
                    }
                    return;
                }
                C3985xa c3985xa3 = c3985xaArr[1];
                if (c3985xa3.f16569do != null) {
                    C0702ae m6653goto4 = AbstractC2747fM.m6653goto(c3985xa3);
                    if (m6653goto4 != null) {
                        AbstractC2747fM.m6654if(c0702ae, m6653goto4, -((AbstractC2747fM) this).f12898do.f821do[1].m8646for());
                        AbstractC2747fM.m6654if(c0702ae2, c0702ae, -((C0702ae) c3694se).f4973for);
                        return;
                    }
                    return;
                }
                if ((c0181Ea7 instanceof InterfaceC0829cm) || c0181Ea7.f808do == null || c0181Ea7.mo460catch(C3985xa.Cdo.CENTER).f16569do != null) {
                    return;
                }
                C0181Ea c0181Ea8 = ((AbstractC2747fM) this).f12898do;
                AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) c0181Ea8.f808do.f810do).f12900do, c0181Ea8.m484while());
                AbstractC2747fM.m6654if(c0702ae, c0702ae2, ((C0702ae) c3694se).f4973for);
                return;
            }
        }
        if (((AbstractC2747fM) this).f12897do == cdo) {
            C0181Ea c0181Ea9 = ((AbstractC2747fM) this).f12898do;
            int i = c0181Ea9.f828for;
            ArrayList arrayList = ((C0702ae) c3694se).f4970do;
            ArrayList arrayList2 = ((C0702ae) c3694se).f4977if;
            if (i == 2) {
                C0181Ea c0181Ea10 = c0181Ea9.f808do;
                if (c0181Ea10 != null) {
                    C3694se c3694se2 = ((AbstractC2747fM) c0181Ea10.f809do).f12901do;
                    arrayList2.add(c3694se2);
                    ((C0702ae) c3694se2).f4970do.add(c3694se);
                    ((C0702ae) c3694se).f4972do = true;
                    arrayList.add(c0702ae2);
                    arrayList.add(c0702ae);
                }
            } else if (i == 3) {
                int i2 = c0181Ea9.f848new;
                KK kk = c0181Ea9.f809do;
                if (i2 == 3) {
                    c0702ae2.f4969do = this;
                    c0702ae.f4969do = this;
                    ((AbstractC2747fM) kk).f12900do.f4969do = this;
                    ((AbstractC2747fM) kk).f12905if.f4969do = this;
                    ((C0702ae) c3694se).f4969do = this;
                    if (c0181Ea9.m477static()) {
                        arrayList2.add(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12901do);
                        ((C0702ae) ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12901do).f4970do.add(c3694se);
                        KK kk2 = ((AbstractC2747fM) this).f12898do.f809do;
                        ((C0702ae) ((AbstractC2747fM) kk2).f12901do).f4969do = this;
                        arrayList2.add(((AbstractC2747fM) kk2).f12900do);
                        arrayList2.add(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12905if);
                        ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12900do.f4970do.add(c3694se);
                        ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12905if.f4970do.add(c3694se);
                    } else if (((AbstractC2747fM) this).f12898do.m476return()) {
                        ((C0702ae) ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12901do).f4977if.add(c3694se);
                        arrayList.add(((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12901do);
                    } else {
                        ((C0702ae) ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12901do).f4977if.add(c3694se);
                    }
                } else {
                    C3694se c3694se3 = ((AbstractC2747fM) kk).f12901do;
                    arrayList2.add(c3694se3);
                    ((C0702ae) c3694se3).f4970do.add(c3694se);
                    ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12900do.f4970do.add(c3694se);
                    ((AbstractC2747fM) ((AbstractC2747fM) this).f12898do.f809do).f12905if.f4970do.add(c3694se);
                    ((C0702ae) c3694se).f4972do = true;
                    arrayList.add(c0702ae2);
                    arrayList.add(c0702ae);
                    c0702ae2.f4977if.add(c3694se);
                    c0702ae.f4977if.add(c3694se);
                }
            }
        }
        C0181Ea c0181Ea11 = ((AbstractC2747fM) this).f12898do;
        C3985xa[] c3985xaArr2 = c0181Ea11.f821do;
        C3985xa c3985xa4 = c3985xaArr2[0];
        C3985xa c3985xa5 = c3985xa4.f16569do;
        if (c3985xa5 != null && c3985xaArr2[1].f16569do != null) {
            if (c0181Ea11.m476return()) {
                c0702ae2.f4975if = ((AbstractC2747fM) this).f12898do.f821do[0].m8646for();
                c0702ae.f4975if = -((AbstractC2747fM) this).f12898do.f821do[1].m8646for();
                return;
            }
            C0702ae m6653goto5 = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[0]);
            C0702ae m6653goto6 = AbstractC2747fM.m6653goto(((AbstractC2747fM) this).f12898do.f821do[1]);
            m6653goto5.m3142if(this);
            m6653goto6.m3142if(this);
            this.f12903for = 4;
            return;
        }
        if (c3985xa5 != null) {
            C0702ae m6653goto7 = AbstractC2747fM.m6653goto(c3985xa4);
            if (m6653goto7 != null) {
                AbstractC2747fM.m6654if(c0702ae2, m6653goto7, ((AbstractC2747fM) this).f12898do.f821do[0].m8646for());
                m6659for(c0702ae, c0702ae2, 1, c3694se);
                return;
            }
            return;
        }
        C3985xa c3985xa6 = c3985xaArr2[1];
        if (c3985xa6.f16569do != null) {
            C0702ae m6653goto8 = AbstractC2747fM.m6653goto(c3985xa6);
            if (m6653goto8 != null) {
                AbstractC2747fM.m6654if(c0702ae, m6653goto8, -((AbstractC2747fM) this).f12898do.f821do[1].m8646for());
                m6659for(c0702ae2, c0702ae, -1, c3694se);
                return;
            }
            return;
        }
        if ((c0181Ea11 instanceof InterfaceC0829cm) || (c0181Ea3 = c0181Ea11.f808do) == null) {
            return;
        }
        AbstractC2747fM.m6654if(c0702ae2, ((AbstractC2747fM) c0181Ea3.f810do).f12900do, c0181Ea11.m484while());
        m6659for(c0702ae, c0702ae2, 1, c3694se);
    }

    public final String toString() {
        return "HorizontalRun " + ((AbstractC2747fM) this).f12898do.f812do;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: try */
    public final void mo1145try() {
        C0702ae c0702ae = ((AbstractC2747fM) this).f12900do;
        if (c0702ae.f4974for) {
            ((AbstractC2747fM) this).f12898do.f805const = c0702ae.f4973for;
        }
    }
}
