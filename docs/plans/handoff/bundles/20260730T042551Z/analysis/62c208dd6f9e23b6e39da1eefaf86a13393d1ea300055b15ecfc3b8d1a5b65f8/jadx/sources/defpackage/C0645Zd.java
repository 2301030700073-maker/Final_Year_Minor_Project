package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.C0181Ea;
import defpackage.C2789g5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: Zd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0645Zd {

    /* renamed from: do, reason: not valid java name */
    public final C0203Fa f4882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2789g5.Cdo f4883do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2789g5.Cif f4884do;

    /* renamed from: if, reason: not valid java name */
    public final C0203Fa f4887if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<VA> f4888if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4886do = true;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f4889if = true;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<AbstractC2747fM> f4885do = new ArrayList<>();

    public C0645Zd(C0203Fa c0203Fa) {
        new ArrayList();
        this.f4884do = null;
        this.f4883do = new C2789g5.Cdo();
        this.f4888if = new ArrayList<>();
        this.f4882do = c0203Fa;
        this.f4887if = c0203Fa;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3057case(C0181Ea c0181Ea, C0181Ea.Cdo cdo, int i, C0181Ea.Cdo cdo2, int i2) {
        C2789g5.Cdo cdo3 = this.f4883do;
        cdo3.f13062do = cdo;
        cdo3.f13067if = cdo2;
        cdo3.f13061do = i;
        cdo3.f13066if = i2;
        ((ConstraintLayout.Cdo) this.f4884do).m3642do(c0181Ea, cdo3);
        c0181Ea.m474private(cdo3.f13064for);
        c0181Ea.m466extends(cdo3.f13069new);
        c0181Ea.f841if = cdo3.f13063do;
        int i3 = cdo3.f13070try;
        c0181Ea.f851super = i3;
        c0181Ea.f841if = i3 > 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3058do(C0702ae c0702ae, int i, int i2, ArrayList arrayList, VA va) {
        AbstractC2747fM abstractC2747fM = c0702ae.f4976if;
        if (abstractC2747fM.f12899do == null) {
            C0203Fa c0203Fa = this.f4882do;
            if (abstractC2747fM == ((C0181Ea) c0203Fa).f810do || abstractC2747fM == ((C0181Ea) c0203Fa).f809do) {
                return;
            }
            if (va == null) {
                va = new VA(abstractC2747fM);
                arrayList.add(va);
            }
            abstractC2747fM.f12899do = va;
            va.f4048do.add(abstractC2747fM);
            C0702ae c0702ae2 = abstractC2747fM.f12900do;
            Iterator it = c0702ae2.f4970do.iterator();
            while (it.hasNext()) {
                InterfaceC0535Ud interfaceC0535Ud = (InterfaceC0535Ud) it.next();
                if (interfaceC0535Ud instanceof C0702ae) {
                    m3058do((C0702ae) interfaceC0535Ud, i, 0, arrayList, va);
                }
            }
            C0702ae c0702ae3 = abstractC2747fM.f12905if;
            Iterator it2 = c0702ae3.f4970do.iterator();
            while (it2.hasNext()) {
                InterfaceC0535Ud interfaceC0535Ud2 = (InterfaceC0535Ud) it2.next();
                if (interfaceC0535Ud2 instanceof C0702ae) {
                    m3058do((C0702ae) interfaceC0535Ud2, i, 1, arrayList, va);
                }
            }
            if (i == 1 && (abstractC2747fM instanceof KK)) {
                Iterator it3 = ((KK) abstractC2747fM).f1796for.f4970do.iterator();
                while (it3.hasNext()) {
                    InterfaceC0535Ud interfaceC0535Ud3 = (InterfaceC0535Ud) it3.next();
                    if (interfaceC0535Ud3 instanceof C0702ae) {
                        m3058do((C0702ae) interfaceC0535Ud3, i, 2, arrayList, va);
                    }
                }
            }
            Iterator it4 = c0702ae2.f4977if.iterator();
            while (it4.hasNext()) {
                m3058do((C0702ae) it4.next(), i, 0, arrayList, va);
            }
            Iterator it5 = c0702ae3.f4977if.iterator();
            while (it5.hasNext()) {
                m3058do((C0702ae) it5.next(), i, 1, arrayList, va);
            }
            if (i == 1 && (abstractC2747fM instanceof KK)) {
                Iterator it6 = ((KK) abstractC2747fM).f1796for.f4977if.iterator();
                while (it6.hasNext()) {
                    m3058do((C0702ae) it6.next(), i, 2, arrayList, va);
                }
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3059else() {
        C2671e5 c2671e5;
        Iterator<C0181Ea> it = ((C2688eM) this.f4882do).f12669if.iterator();
        while (it.hasNext()) {
            C0181Ea next = it.next();
            if (!next.f816do) {
                C0181Ea.Cdo[] cdoArr = next.f819do;
                boolean z = false;
                C0181Ea.Cdo cdo = cdoArr[0];
                C0181Ea.Cdo cdo2 = cdoArr[1];
                int i = next.f828for;
                int i2 = next.f848new;
                C0181Ea.Cdo cdo3 = C0181Ea.Cdo.WRAP_CONTENT;
                C0181Ea.Cdo cdo4 = C0181Ea.Cdo.MATCH_CONSTRAINT;
                boolean z2 = cdo == cdo3 || (cdo == cdo4 && i == 1);
                if (cdo2 == cdo3 || (cdo2 == cdo4 && i2 == 1)) {
                    z = true;
                }
                C2887hm c2887hm = next.f810do;
                C3694se c3694se = ((AbstractC2747fM) c2887hm).f12901do;
                boolean z3 = ((C0702ae) c3694se).f4974for;
                KK kk = next.f809do;
                C3694se c3694se2 = ((AbstractC2747fM) kk).f12901do;
                boolean z4 = ((C0702ae) c3694se2).f4974for;
                C0181Ea.Cdo cdo5 = C0181Ea.Cdo.FIXED;
                if (z3 && z4) {
                    m3057case(next, cdo5, ((C0702ae) c3694se).f4973for, cdo5, ((C0702ae) c3694se2).f4973for);
                    next.f816do = true;
                } else if (z3 && z) {
                    m3057case(next, cdo5, ((C0702ae) c3694se).f4973for, cdo3, ((C0702ae) c3694se2).f4973for);
                    C3694se c3694se3 = ((AbstractC2747fM) kk).f12901do;
                    if (cdo2 == cdo4) {
                        c3694se3.f15507try = next.m462const();
                    } else {
                        c3694se3.mo3143new(next.m462const());
                        next.f816do = true;
                    }
                } else if (z4 && z2) {
                    m3057case(next, cdo3, ((C0702ae) c3694se).f4973for, cdo5, ((C0702ae) c3694se2).f4973for);
                    C3694se c3694se4 = ((AbstractC2747fM) c2887hm).f12901do;
                    if (cdo == cdo4) {
                        c3694se4.f15507try = next.m481throw();
                    } else {
                        c3694se4.mo3143new(next.m481throw());
                        next.f816do = true;
                    }
                }
                if (next.f816do && (c2671e5 = kk.f1795do) != null) {
                    c2671e5.mo3143new(next.f851super);
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3060for() {
        ArrayList<AbstractC2747fM> arrayList = this.f4885do;
        arrayList.clear();
        C0203Fa c0203Fa = this.f4887if;
        ((C0181Ea) c0203Fa).f810do.mo1140case();
        KK kk = ((C0181Ea) c0203Fa).f809do;
        kk.mo1140case();
        arrayList.add(((C0181Ea) c0203Fa).f810do);
        arrayList.add(kk);
        Iterator<C0181Ea> it = ((C2688eM) c0203Fa).f12669if.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            C0181Ea next = it.next();
            if (next instanceof C0389Nl) {
                arrayList.add(new C0411Ol(next));
            } else {
                if (next.m476return()) {
                    if (next.f814do == null) {
                        next.f814do = new C3312m7(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f814do);
                } else {
                    arrayList.add(next.f810do);
                }
                if (next.m477static()) {
                    if (next.f839if == null) {
                        next.f839if = new C3312m7(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f839if);
                } else {
                    arrayList.add(next.f809do);
                }
                if (next instanceof C2710em) {
                    arrayList.add(new C2652dm(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<AbstractC2747fM> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().mo1140case();
        }
        Iterator<AbstractC2747fM> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            AbstractC2747fM next2 = it3.next();
            if (next2.f12898do != c0203Fa) {
                next2.mo1144new();
            }
        }
        ArrayList<VA> arrayList2 = this.f4888if;
        arrayList2.clear();
        C0203Fa c0203Fa2 = this.f4882do;
        m3063try(((C0181Ea) c0203Fa2).f810do, 0, arrayList2);
        m3063try(((C0181Ea) c0203Fa2).f809do, 1, arrayList2);
        this.f4886do = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x0161, code lost:
    
        if (r12[1].f16569do == null) goto L86;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3061if(defpackage.C0203Fa r23) {
        /*
            Method dump skipped, instructions count: 745
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0645Zd.m3061if(Fa):void");
    }

    /* renamed from: new, reason: not valid java name */
    public final int m3062new(C0203Fa c0203Fa, int i) {
        long j;
        ArrayList<VA> arrayList;
        int i2;
        long max;
        float f;
        C0203Fa c0203Fa2 = c0203Fa;
        int i3 = i;
        ArrayList<VA> arrayList2 = this.f4888if;
        int size = arrayList2.size();
        int i4 = 0;
        long j2 = 0;
        while (i4 < size) {
            AbstractC2747fM abstractC2747fM = arrayList2.get(i4).f4047do;
            if (!(abstractC2747fM instanceof C3312m7) ? !(i3 != 0 ? (abstractC2747fM instanceof KK) : (abstractC2747fM instanceof C2887hm)) : ((AbstractC2747fM) ((C3312m7) abstractC2747fM)).f12904if != i3) {
                C0702ae c0702ae = (i3 == 0 ? ((C0181Ea) c0203Fa2).f810do : ((C0181Ea) c0203Fa2).f809do).f12900do;
                C0702ae c0702ae2 = (i3 == 0 ? ((C0181Ea) c0203Fa2).f810do : ((C0181Ea) c0203Fa2).f809do).f12905if;
                boolean contains = abstractC2747fM.f12900do.f4977if.contains(c0702ae);
                C0702ae c0702ae3 = abstractC2747fM.f12905if;
                boolean contains2 = c0702ae3.f4977if.contains(c0702ae2);
                long mo6656break = abstractC2747fM.mo6656break();
                C0702ae c0702ae4 = abstractC2747fM.f12900do;
                if (contains && contains2) {
                    long m2546if = VA.m2546if(c0702ae4, 0L);
                    long m2545do = VA.m2545do(c0702ae3, 0L);
                    long j3 = m2546if - mo6656break;
                    int i5 = c0702ae3.f4975if;
                    arrayList = arrayList2;
                    i2 = size;
                    if (j3 >= (-i5)) {
                        j3 += i5;
                    }
                    long j4 = j3;
                    long j5 = (-m2545do) - mo6656break;
                    long j6 = c0702ae4.f4975if;
                    long j7 = j5 - j6;
                    if (j7 >= j6) {
                        j7 -= j6;
                    }
                    C0181Ea c0181Ea = abstractC2747fM.f12898do;
                    if (i3 == 0) {
                        f = c0181Ea.f800case;
                    } else if (i3 == 1) {
                        f = c0181Ea.f823else;
                    } else {
                        c0181Ea.getClass();
                        f = -1.0f;
                    }
                    float f2 = f > 0.0f ? (long) ((j4 / (1.0f - f)) + (j7 / f)) : 0L;
                    j = (c0702ae4.f4975if + ((((long) ((f2 * f) + 0.5f)) + mo6656break) + ((long) Cpublic.m7823for(1.0f, f, f2, 0.5f)))) - c0702ae3.f4975if;
                } else {
                    arrayList = arrayList2;
                    i2 = size;
                    if (contains) {
                        max = Math.max(VA.m2546if(c0702ae4, c0702ae4.f4975if), c0702ae4.f4975if + mo6656break);
                    } else if (contains2) {
                        max = Math.max(-VA.m2545do(c0702ae3, c0702ae3.f4975if), (-c0702ae3.f4975if) + mo6656break);
                    } else {
                        j = (abstractC2747fM.mo6656break() + c0702ae4.f4975if) - c0702ae3.f4975if;
                    }
                    j = max;
                }
            } else {
                j = 0;
                arrayList = arrayList2;
                i2 = size;
            }
            j2 = Math.max(j2, j);
            i4++;
            c0203Fa2 = c0203Fa;
            i3 = i;
            arrayList2 = arrayList;
            size = i2;
        }
        return (int) j2;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3063try(AbstractC2747fM abstractC2747fM, int i, ArrayList<VA> arrayList) {
        C0702ae c0702ae;
        Iterator it = abstractC2747fM.f12900do.f4970do.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            c0702ae = abstractC2747fM.f12905if;
            if (!hasNext) {
                break;
            }
            InterfaceC0535Ud interfaceC0535Ud = (InterfaceC0535Ud) it.next();
            if (interfaceC0535Ud instanceof C0702ae) {
                m3058do((C0702ae) interfaceC0535Ud, i, 0, arrayList, null);
            } else if (interfaceC0535Ud instanceof AbstractC2747fM) {
                m3058do(((AbstractC2747fM) interfaceC0535Ud).f12900do, i, 0, arrayList, null);
            }
        }
        Iterator it2 = c0702ae.f4970do.iterator();
        while (it2.hasNext()) {
            InterfaceC0535Ud interfaceC0535Ud2 = (InterfaceC0535Ud) it2.next();
            if (interfaceC0535Ud2 instanceof C0702ae) {
                m3058do((C0702ae) interfaceC0535Ud2, i, 1, arrayList, null);
            } else if (interfaceC0535Ud2 instanceof AbstractC2747fM) {
                m3058do(((AbstractC2747fM) interfaceC0535Ud2).f12905if, i, 1, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((KK) abstractC2747fM).f1796for.f4970do.iterator();
            while (it3.hasNext()) {
                InterfaceC0535Ud interfaceC0535Ud3 = (InterfaceC0535Ud) it3.next();
                if (interfaceC0535Ud3 instanceof C0702ae) {
                    m3058do((C0702ae) interfaceC0535Ud3, i, 2, arrayList, null);
                }
            }
        }
    }
}
