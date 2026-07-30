package defpackage;

import defpackage.C0181Ea;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class N4 extends C2710em {

    /* renamed from: static, reason: not valid java name */
    public int f2300static = 0;

    /* renamed from: new, reason: not valid java name */
    public boolean f2299new = true;

    /* renamed from: switch, reason: not valid java name */
    public int f2301switch = 0;

    @Override // defpackage.C0181Ea
    /* renamed from: new */
    public final void mo472new(C3706sq c3706sq) {
        boolean z;
        int i;
        C3985xa[] c3985xaArr = ((C0181Ea) this).f821do;
        C3985xa c3985xa = ((C0181Ea) this).f815do;
        c3985xaArr[0] = c3985xa;
        int i2 = 2;
        C3985xa c3985xa2 = ((C0181Ea) this).f840if;
        c3985xaArr[2] = c3985xa2;
        C3985xa c3985xa3 = ((C0181Ea) this).f830for;
        c3985xaArr[1] = c3985xa3;
        C3985xa c3985xa4 = ((C0181Ea) this).f849new;
        c3985xaArr[3] = c3985xa4;
        for (C3985xa c3985xa5 : c3985xaArr) {
            c3985xa5.f16566do = c3706sq.m8145break(c3985xa5);
        }
        int i3 = this.f2300static;
        if (i3 < 0 || i3 >= 4) {
            return;
        }
        C3985xa c3985xa6 = c3985xaArr[i3];
        for (int i4 = 0; i4 < this.f12708return; i4++) {
            C0181Ea c0181Ea = ((C2710em) this).f12707for[i4];
            if (this.f2299new || c0181Ea.mo483try()) {
                int i5 = this.f2300static;
                C0181Ea.Cdo cdo = C0181Ea.Cdo.MATCH_CONSTRAINT;
                if (((i5 == 0 || i5 == 1) && c0181Ea.f819do[0] == cdo && c0181Ea.f815do.f16569do != null && c0181Ea.f830for.f16569do != null) || ((i5 == 2 || i5 == 3) && c0181Ea.f819do[1] == cdo && c0181Ea.f840if.f16569do != null && c0181Ea.f849new.f16569do != null)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        boolean z2 = c3985xa.m8651try() || c3985xa3.m8651try();
        boolean z3 = c3985xa2.m8651try() || c3985xa4.m8651try();
        int i6 = !(!z && (((i = this.f2300static) == 0 && z2) || ((i == 2 && z3) || ((i == 1 && z2) || (i == 3 && z3))))) ? 4 : 5;
        int i7 = 0;
        while (i7 < this.f12708return) {
            C0181Ea c0181Ea2 = ((C2710em) this).f12707for[i7];
            if (this.f2299new || c0181Ea2.mo483try()) {
                HE m8145break = c3706sq.m8145break(c0181Ea2.f821do[this.f2300static]);
                int i8 = this.f2300static;
                C3985xa c3985xa7 = c0181Ea2.f821do[i8];
                c3985xa7.f16566do = m8145break;
                C3985xa c3985xa8 = c3985xa7.f16569do;
                int i9 = (c3985xa8 == null || c3985xa8.f16565do != this) ? 0 : c3985xa7.f16564do + 0;
                if (i8 == 0 || i8 == i2) {
                    HE he = c3985xa6.f16566do;
                    int i10 = this.f2301switch - i9;
                    G2 m8147catch = c3706sq.m8147catch();
                    HE m8148class = c3706sq.m8148class();
                    m8148class.f1320for = 0;
                    m8147catch.m700new(he, m8145break, m8148class, i10);
                    c3706sq.m8152for(m8147catch);
                } else {
                    HE he2 = c3985xa6.f16566do;
                    int i11 = this.f2301switch + i9;
                    G2 m8147catch2 = c3706sq.m8147catch();
                    HE m8148class2 = c3706sq.m8148class();
                    m8148class2.f1320for = 0;
                    m8147catch2.m698for(he2, m8145break, m8148class2, i11);
                    c3706sq.m8152for(m8147catch2);
                }
                c3706sq.m8160try(c3985xa6.f16566do, m8145break, this.f2301switch + i9, i6);
            }
            i7++;
            i2 = 2;
        }
        int i12 = this.f2300static;
        if (i12 == 0) {
            c3706sq.m8160try(c3985xa3.f16566do, c3985xa.f16566do, 0, 8);
            c3706sq.m8160try(c3985xa.f16566do, ((C0181Ea) this).f808do.f830for.f16566do, 0, 4);
            c3706sq.m8160try(c3985xa.f16566do, ((C0181Ea) this).f808do.f815do.f16566do, 0, 0);
            return;
        }
        if (i12 == 1) {
            c3706sq.m8160try(c3985xa.f16566do, c3985xa3.f16566do, 0, 8);
            c3706sq.m8160try(c3985xa.f16566do, ((C0181Ea) this).f808do.f815do.f16566do, 0, 4);
            c3706sq.m8160try(c3985xa.f16566do, ((C0181Ea) this).f808do.f830for.f16566do, 0, 0);
        } else if (i12 == 2) {
            c3706sq.m8160try(c3985xa4.f16566do, c3985xa2.f16566do, 0, 8);
            c3706sq.m8160try(c3985xa2.f16566do, ((C0181Ea) this).f808do.f849new.f16566do, 0, 4);
            c3706sq.m8160try(c3985xa2.f16566do, ((C0181Ea) this).f808do.f840if.f16566do, 0, 0);
        } else if (i12 == 3) {
            c3706sq.m8160try(c3985xa2.f16566do, c3985xa4.f16566do, 0, 8);
            c3706sq.m8160try(c3985xa2.f16566do, ((C0181Ea) this).f808do.f840if.f16566do, 0, 4);
            c3706sq.m8160try(c3985xa2.f16566do, ((C0181Ea) this).f808do.f849new.f16566do, 0, 0);
        }
    }

    @Override // defpackage.C2710em, defpackage.C0181Ea
    /* renamed from: this */
    public final void mo480this(C0181Ea c0181Ea, HashMap<C0181Ea, C0181Ea> hashMap) {
        super.mo480this(c0181Ea, hashMap);
        N4 n4 = (N4) c0181Ea;
        this.f2300static = n4.f2300static;
        this.f2299new = n4.f2299new;
        this.f2301switch = n4.f2301switch;
    }

    @Override // defpackage.C0181Ea
    public final String toString() {
        String m7984try = Creturn.m7984try(new StringBuilder("[Barrier] "), ((C0181Ea) this).f812do, " {");
        for (int i = 0; i < this.f12708return; i++) {
            C0181Ea c0181Ea = ((C2710em) this).f12707for[i];
            if (i > 0) {
                m7984try = Cpublic.m7816case(m7984try, ", ");
            }
            m7984try = m7984try + c0181Ea.f812do;
        }
        return Cpublic.m7816case(m7984try, "}");
    }

    @Override // defpackage.C0181Ea
    /* renamed from: try */
    public final boolean mo483try() {
        return true;
    }
}
