package defpackage;

import defpackage.C0181Ea;
import defpackage.C2789g5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: Fa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0203Fa extends C2688eM {

    /* renamed from: return, reason: not valid java name */
    public int f1068return;

    /* renamed from: static, reason: not valid java name */
    public int f1069static;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2789g5 f1063do = new C2789g5(this);

    /* renamed from: do, reason: not valid java name */
    public final C0645Zd f1061do = new C0645Zd(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2789g5.Cif f1062do = null;

    /* renamed from: new, reason: not valid java name */
    public boolean f1067new = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3706sq f1064do = new C3706sq();

    /* renamed from: switch, reason: not valid java name */
    public int f1070switch = 0;

    /* renamed from: throws, reason: not valid java name */
    public int f1071throws = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3253l7[] f1065do = new C3253l7[4];

    /* renamed from: if, reason: not valid java name */
    public C3253l7[] f1066if = new C3253l7[4];

    /* renamed from: default, reason: not valid java name */
    public int f1060default = 263;

    /* renamed from: try, reason: not valid java name */
    public boolean f1072try = false;

    /* renamed from: case, reason: not valid java name */
    public boolean f1059case = false;

    @Override // defpackage.C0181Ea
    /* renamed from: abstract */
    public final void mo457abstract(boolean z, boolean z2) {
        super.mo457abstract(z, z2);
        int size = ((C2688eM) this).f12669if.size();
        for (int i = 0; i < size; i++) {
            ((C2688eM) this).f12669if.get(i).mo457abstract(z, z2);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m617interface(C3706sq c3706sq) {
        mo472new(c3706sq);
        int size = ((C2688eM) this).f12669if.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            C0181Ea c0181Ea = ((C2688eM) this).f12669if.get(i);
            boolean[] zArr = c0181Ea.f844if;
            zArr[0] = false;
            zArr[1] = false;
            if (c0181Ea instanceof N4) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                C0181Ea c0181Ea2 = ((C2688eM) this).f12669if.get(i2);
                if (c0181Ea2 instanceof N4) {
                    N4 n4 = (N4) c0181Ea2;
                    for (int i3 = 0; i3 < n4.f12708return; i3++) {
                        C0181Ea c0181Ea3 = ((C2710em) n4).f12707for[i3];
                        int i4 = n4.f2300static;
                        if (i4 == 0 || i4 == 1) {
                            c0181Ea3.f844if[0] = true;
                        } else if (i4 == 2 || i4 == 3) {
                            c0181Ea3.f844if[1] = true;
                        }
                    }
                }
            }
        }
        for (int i5 = 0; i5 < size; i5++) {
            C0181Ea c0181Ea4 = ((C2688eM) this).f12669if.get(i5);
            c0181Ea4.getClass();
            if ((c0181Ea4 instanceof EL) || (c0181Ea4 instanceof C0389Nl)) {
                c0181Ea4.mo472new(c3706sq);
            }
        }
        for (int i6 = 0; i6 < size; i6++) {
            C0181Ea c0181Ea5 = ((C2688eM) this).f12669if.get(i6);
            boolean z2 = c0181Ea5 instanceof C0203Fa;
            C0181Ea.Cdo cdo = C0181Ea.Cdo.WRAP_CONTENT;
            if (z2) {
                C0181Ea.Cdo[] cdoArr = c0181Ea5.f819do;
                C0181Ea.Cdo cdo2 = cdoArr[0];
                C0181Ea.Cdo cdo3 = cdoArr[1];
                C0181Ea.Cdo cdo4 = C0181Ea.Cdo.FIXED;
                if (cdo2 == cdo) {
                    c0181Ea5.m468finally(cdo4);
                }
                if (cdo3 == cdo) {
                    c0181Ea5.m473package(cdo4);
                }
                c0181Ea5.mo472new(c3706sq);
                if (cdo2 == cdo) {
                    c0181Ea5.m468finally(cdo2);
                }
                if (cdo3 == cdo) {
                    c0181Ea5.m473package(cdo3);
                }
            } else {
                c0181Ea5.f807do = -1;
                c0181Ea5.f836if = -1;
                C0181Ea.Cdo cdo5 = ((C0181Ea) this).f819do[0];
                C0181Ea.Cdo cdo6 = C0181Ea.Cdo.MATCH_PARENT;
                if (cdo5 != cdo && c0181Ea5.f819do[0] == cdo6) {
                    C3985xa c3985xa = c0181Ea5.f815do;
                    int i7 = c3985xa.f16564do;
                    int m481throw = m481throw();
                    C3985xa c3985xa2 = c0181Ea5.f830for;
                    int i8 = m481throw - c3985xa2.f16564do;
                    c3985xa.f16566do = c3706sq.m8145break(c3985xa);
                    c3985xa2.f16566do = c3706sq.m8145break(c3985xa2);
                    c3706sq.m8156new(c3985xa.f16566do, i7);
                    c3706sq.m8156new(c3985xa2.f16566do, i8);
                    c0181Ea5.f807do = 2;
                    c0181Ea5.f805const = i7;
                    int i9 = i8 - i7;
                    c0181Ea5.f799break = i9;
                    int i10 = c0181Ea5.f853throw;
                    if (i9 < i10) {
                        c0181Ea5.f799break = i10;
                    }
                }
                if (((C0181Ea) this).f819do[1] != cdo && c0181Ea5.f819do[1] == cdo6) {
                    C3985xa c3985xa3 = c0181Ea5.f840if;
                    int i11 = c3985xa3.f16564do;
                    int m462const = m462const();
                    C3985xa c3985xa4 = c0181Ea5.f849new;
                    int i12 = m462const - c3985xa4.f16564do;
                    c3985xa3.f16566do = c3706sq.m8145break(c3985xa3);
                    c3985xa4.f16566do = c3706sq.m8145break(c3985xa4);
                    c3706sq.m8156new(c3985xa3.f16566do, i11);
                    c3706sq.m8156new(c3985xa4.f16566do, i12);
                    if (c0181Ea5.f851super > 0 || c0181Ea5.f845import == 8) {
                        C3985xa c3985xa5 = c0181Ea5.f856try;
                        HE m8145break = c3706sq.m8145break(c3985xa5);
                        c3985xa5.f16566do = m8145break;
                        c3706sq.m8156new(m8145break, c0181Ea5.f851super + i11);
                    }
                    c0181Ea5.f836if = 2;
                    c0181Ea5.f826final = i11;
                    int i13 = i12 - i11;
                    c0181Ea5.f803catch = i13;
                    int i14 = c0181Ea5.f857while;
                    if (i13 < i14) {
                        c0181Ea5.f803catch = i14;
                    }
                }
                if (!((c0181Ea5 instanceof EL) || (c0181Ea5 instanceof C0389Nl))) {
                    c0181Ea5.mo472new(c3706sq);
                }
            }
        }
        if (this.f1070switch > 0) {
            C3194k7.m7215do(this, c3706sq, 0);
        }
        if (this.f1071throws > 0) {
            C3194k7.m7215do(this, c3706sq, 1);
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public final boolean m618protected(int i, boolean z) {
        boolean z2;
        boolean z3;
        C0181Ea.Cdo cdo;
        boolean z4 = z & true;
        C0645Zd c0645Zd = this.f1061do;
        C0203Fa c0203Fa = c0645Zd.f4882do;
        C0181Ea.Cdo m461class = c0203Fa.m461class(0);
        C0181Ea.Cdo m461class2 = c0203Fa.m461class(1);
        int m484while = c0203Fa.m484while();
        int m470import = c0203Fa.m470import();
        ArrayList<AbstractC2747fM> arrayList = c0645Zd.f4885do;
        C0181Ea.Cdo cdo2 = C0181Ea.Cdo.FIXED;
        C2887hm c2887hm = ((C0181Ea) c0203Fa).f810do;
        KK kk = ((C0181Ea) c0203Fa).f809do;
        if (z4 && (m461class == (cdo = C0181Ea.Cdo.WRAP_CONTENT) || m461class2 == cdo)) {
            Iterator<AbstractC2747fM> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AbstractC2747fM next = it.next();
                if (next.f12904if == i && !next.mo1141catch()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && m461class == cdo) {
                    c0203Fa.m468finally(cdo2);
                    c0203Fa.m474private(c0645Zd.m3062new(c0203Fa, 0));
                    ((AbstractC2747fM) c2887hm).f12901do.mo3143new(c0203Fa.m481throw());
                }
            } else if (z4 && m461class2 == cdo) {
                c0203Fa.m473package(cdo2);
                c0203Fa.m466extends(c0645Zd.m3062new(c0203Fa, 1));
                ((AbstractC2747fM) kk).f12901do.mo3143new(c0203Fa.m462const());
            }
        }
        C0181Ea.Cdo cdo3 = C0181Ea.Cdo.MATCH_PARENT;
        if (i == 0) {
            C0181Ea.Cdo cdo4 = ((C0181Ea) c0203Fa).f819do[0];
            if (cdo4 == cdo2 || cdo4 == cdo3) {
                int m481throw = c0203Fa.m481throw() + m484while;
                ((AbstractC2747fM) c2887hm).f12905if.mo3143new(m481throw);
                ((AbstractC2747fM) c2887hm).f12901do.mo3143new(m481throw - m484while);
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            C0181Ea.Cdo cdo5 = ((C0181Ea) c0203Fa).f819do[1];
            if (cdo5 == cdo2 || cdo5 == cdo3) {
                int m462const = c0203Fa.m462const() + m470import;
                ((AbstractC2747fM) kk).f12905if.mo3143new(m462const);
                ((AbstractC2747fM) kk).f12901do.mo3143new(m462const - m470import);
                z2 = true;
            }
            z2 = false;
        }
        c0645Zd.m3059else();
        Iterator<AbstractC2747fM> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AbstractC2747fM next2 = it2.next();
            if (next2.f12904if == i && (next2.f12898do != c0203Fa || next2.f12902do)) {
                next2.mo1145try();
            }
        }
        Iterator<AbstractC2747fM> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            AbstractC2747fM next3 = it3.next();
            if (next3.f12904if == i && (z2 || next3.f12898do != c0203Fa)) {
                if (!next3.f12900do.f4974for || !next3.f12905if.f4974for || (!(next3 instanceof C3312m7) && !((C0702ae) next3.f12901do).f4974for)) {
                    z3 = false;
                    break;
                }
            }
        }
        z3 = true;
        c0203Fa.m468finally(m461class);
        c0203Fa.m473package(m461class2);
        return z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01cc  */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v16 */
    @Override // defpackage.C2688eM
    /* renamed from: strictfp, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo619strictfp() {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0203Fa.mo619strictfp():void");
    }

    @Override // defpackage.C2688eM, defpackage.C0181Ea
    /* renamed from: switch */
    public final void mo479switch() {
        this.f1064do.m8155import();
        this.f1068return = 0;
        this.f1069static = 0;
        super.mo479switch();
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m620transient() {
        C0181Ea.Cdo cdo;
        C0181Ea.Cdo cdo2;
        ArrayList<C0181Ea> arrayList = this.f1063do.f13060do;
        arrayList.clear();
        int size = ((C2688eM) this).f12669if.size();
        for (int i = 0; i < size; i++) {
            C0181Ea c0181Ea = ((C2688eM) this).f12669if.get(i);
            C0181Ea.Cdo[] cdoArr = c0181Ea.f819do;
            C0181Ea.Cdo cdo3 = cdoArr[0];
            C0181Ea.Cdo cdo4 = C0181Ea.Cdo.MATCH_CONSTRAINT;
            if (cdo3 == cdo4 || cdo3 == (cdo = C0181Ea.Cdo.MATCH_PARENT) || (cdo2 = cdoArr[1]) == cdo4 || cdo2 == cdo) {
                arrayList.add(c0181Ea);
            }
        }
        this.f1061do.f4886do = true;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m621volatile(C0181Ea c0181Ea, int i) {
        if (i == 0) {
            int i2 = this.f1070switch + 1;
            C3253l7[] c3253l7Arr = this.f1066if;
            if (i2 >= c3253l7Arr.length) {
                this.f1066if = (C3253l7[]) Arrays.copyOf(c3253l7Arr, c3253l7Arr.length * 2);
            }
            C3253l7[] c3253l7Arr2 = this.f1066if;
            int i3 = this.f1070switch;
            c3253l7Arr2[i3] = new C3253l7(c0181Ea, 0, this.f1067new);
            this.f1070switch = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.f1071throws + 1;
            C3253l7[] c3253l7Arr3 = this.f1065do;
            if (i4 >= c3253l7Arr3.length) {
                this.f1065do = (C3253l7[]) Arrays.copyOf(c3253l7Arr3, c3253l7Arr3.length * 2);
            }
            C3253l7[] c3253l7Arr4 = this.f1065do;
            int i5 = this.f1071throws;
            c3253l7Arr4[i5] = new C3253l7(c0181Ea, 1, this.f1067new);
            this.f1071throws = i5 + 1;
        }
    }
}
