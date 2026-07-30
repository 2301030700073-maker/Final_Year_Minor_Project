package defpackage;

import defpackage.C0181Ea;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: Xi, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0606Xi extends EL {

    /* renamed from: case, reason: not valid java name */
    public C0181Ea[] f4558case;

    /* renamed from: abstract, reason: not valid java name */
    public int f4556abstract = -1;

    /* renamed from: continue, reason: not valid java name */
    public int f4562continue = -1;

    /* renamed from: strictfp, reason: not valid java name */
    public int f4571strictfp = -1;

    /* renamed from: volatile, reason: not valid java name */
    public int f4576volatile = -1;

    /* renamed from: interface, reason: not valid java name */
    public int f4567interface = -1;

    /* renamed from: protected, reason: not valid java name */
    public int f4570protected = -1;

    /* renamed from: goto, reason: not valid java name */
    public float f4563goto = 0.5f;

    /* renamed from: this, reason: not valid java name */
    public float f4573this = 0.5f;

    /* renamed from: break, reason: not valid java name */
    public float f4557break = 0.5f;

    /* renamed from: catch, reason: not valid java name */
    public float f4559catch = 0.5f;

    /* renamed from: class, reason: not valid java name */
    public float f4560class = 0.5f;

    /* renamed from: const, reason: not valid java name */
    public float f4561const = 0.5f;

    /* renamed from: transient, reason: not valid java name */
    public int f4574transient = 0;

    /* renamed from: implements, reason: not valid java name */
    public int f4565implements = 0;

    /* renamed from: instanceof, reason: not valid java name */
    public int f4566instanceof = 2;

    /* renamed from: synchronized, reason: not valid java name */
    public int f4572synchronized = 2;
    public int a = 0;
    public int b = -1;
    public int c = 0;

    /* renamed from: if, reason: not valid java name */
    public final ArrayList<Cdo> f4564if = new ArrayList<>();

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public C0181Ea[] f4569new = null;

    /* renamed from: try, reason: not valid java name */
    public C0181Ea[] f4575try = null;

    /* renamed from: new, reason: not valid java name */
    public int[] f4568new = null;
    public int d = 0;

    /* renamed from: Xi$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: case, reason: not valid java name */
        public int f4578case;

        /* renamed from: class, reason: not valid java name */
        public int f4580class;

        /* renamed from: do, reason: not valid java name */
        public int f4581do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3985xa f4584do;

        /* renamed from: for, reason: not valid java name */
        public int f4586for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public C3985xa f4587for;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public C3985xa f4590if;

        /* renamed from: new, reason: not valid java name */
        public int f4591new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public C3985xa f4592new;

        /* renamed from: try, reason: not valid java name */
        public int f4594try;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0181Ea f4582do = null;

        /* renamed from: if, reason: not valid java name */
        public int f4589if = 0;

        /* renamed from: else, reason: not valid java name */
        public int f4585else = 0;

        /* renamed from: goto, reason: not valid java name */
        public int f4588goto = 0;

        /* renamed from: this, reason: not valid java name */
        public int f4593this = 0;

        /* renamed from: break, reason: not valid java name */
        public int f4577break = 0;

        /* renamed from: catch, reason: not valid java name */
        public int f4579catch = 0;

        public Cdo(int i, C3985xa c3985xa, C3985xa c3985xa2, C3985xa c3985xa3, C3985xa c3985xa4, int i2) {
            this.f4586for = 0;
            this.f4591new = 0;
            this.f4594try = 0;
            this.f4578case = 0;
            this.f4580class = 0;
            this.f4581do = i;
            this.f4584do = c3985xa;
            this.f4590if = c3985xa2;
            this.f4587for = c3985xa3;
            this.f4592new = c3985xa4;
            this.f4586for = C0606Xi.this.f772extends;
            this.f4591new = C0606Xi.this.f777static;
            this.f4594try = C0606Xi.this.f773finally;
            this.f4578case = C0606Xi.this.f778switch;
            this.f4580class = i2;
        }

        /* renamed from: case, reason: not valid java name */
        public final void m2862case(int i, C3985xa c3985xa, C3985xa c3985xa2, C3985xa c3985xa3, C3985xa c3985xa4, int i2, int i3, int i4, int i5, int i6) {
            this.f4581do = i;
            this.f4584do = c3985xa;
            this.f4590if = c3985xa2;
            this.f4587for = c3985xa3;
            this.f4592new = c3985xa4;
            this.f4586for = i2;
            this.f4591new = i3;
            this.f4594try = i4;
            this.f4578case = i5;
            this.f4580class = i6;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m2863do(C0181Ea c0181Ea) {
            int i = this.f4581do;
            C0181Ea.Cdo cdo = C0181Ea.Cdo.MATCH_CONSTRAINT;
            C0606Xi c0606Xi = C0606Xi.this;
            if (i == 0) {
                int m2861protected = c0606Xi.m2861protected(c0181Ea, this.f4580class);
                if (c0181Ea.f819do[0] == cdo) {
                    this.f4579catch++;
                    m2861protected = 0;
                }
                this.f4585else = m2861protected + (c0181Ea.f845import != 8 ? c0606Xi.f4574transient : 0) + this.f4585else;
                int m2860interface = c0606Xi.m2860interface(c0181Ea, this.f4580class);
                if (this.f4582do == null || this.f4589if < m2860interface) {
                    this.f4582do = c0181Ea;
                    this.f4589if = m2860interface;
                    this.f4588goto = m2860interface;
                }
            } else {
                int m2861protected2 = c0606Xi.m2861protected(c0181Ea, this.f4580class);
                int m2860interface2 = c0606Xi.m2860interface(c0181Ea, this.f4580class);
                if (c0181Ea.f819do[1] == cdo) {
                    this.f4579catch++;
                    m2860interface2 = 0;
                }
                this.f4588goto = m2860interface2 + (c0181Ea.f845import != 8 ? c0606Xi.f4565implements : 0) + this.f4588goto;
                if (this.f4582do == null || this.f4589if < m2861protected2) {
                    this.f4582do = c0181Ea;
                    this.f4589if = m2861protected2;
                    this.f4585else = m2861protected2;
                }
            }
            this.f4577break++;
        }

        /* renamed from: for, reason: not valid java name */
        public final int m2864for() {
            return this.f4581do == 1 ? this.f4588goto - C0606Xi.this.f4565implements : this.f4588goto;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m2865if(int i, boolean z, boolean z2) {
            C0606Xi c0606Xi;
            int i2;
            int i3;
            C0181Ea c0181Ea;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9 = this.f4577break;
            int i10 = 0;
            while (true) {
                c0606Xi = C0606Xi.this;
                if (i10 >= i9 || (i8 = this.f4593this + i10) >= c0606Xi.d) {
                    break;
                }
                C0181Ea c0181Ea2 = c0606Xi.f4558case[i8];
                if (c0181Ea2 != null) {
                    c0181Ea2.m482throws();
                }
                i10++;
            }
            if (i9 == 0 || this.f4582do == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i11 = -1;
            int i12 = -1;
            for (int i13 = 0; i13 < i9; i13++) {
                int i14 = this.f4593this + (z ? (i9 - 1) - i13 : i13);
                if (i14 >= c0606Xi.d) {
                    break;
                }
                if (c0606Xi.f4558case[i14].f845import == 0) {
                    if (i11 == -1) {
                        i11 = i13;
                    }
                    i12 = i13;
                }
            }
            if (this.f4581do != 0) {
                C0181Ea c0181Ea3 = this.f4582do;
                c0181Ea3.f846native = c0606Xi.f4556abstract;
                int i15 = this.f4586for;
                if (i > 0) {
                    i15 += c0606Xi.f4574transient;
                }
                C3985xa c3985xa = c0181Ea3.f830for;
                C3985xa c3985xa2 = c0181Ea3.f815do;
                if (z) {
                    c3985xa.m8644do(this.f4587for, i15);
                    if (z2) {
                        c3985xa2.m8644do(this.f4584do, this.f4594try);
                    }
                    if (i > 0) {
                        this.f4587for.f16565do.f815do.m8644do(c3985xa, 0);
                    }
                } else {
                    c3985xa2.m8644do(this.f4584do, i15);
                    if (z2) {
                        c3985xa.m8644do(this.f4587for, this.f4594try);
                    }
                    if (i > 0) {
                        this.f4584do.f16565do.f830for.m8644do(c3985xa2, 0);
                    }
                }
                int i16 = 0;
                C0181Ea c0181Ea4 = null;
                while (i16 < i9) {
                    int i17 = this.f4593this + i16;
                    if (i17 >= c0606Xi.d) {
                        return;
                    }
                    C0181Ea c0181Ea5 = c0606Xi.f4558case[i17];
                    if (i16 == 0) {
                        c0181Ea5.m469goto(c0181Ea5.f840if, this.f4590if, this.f4591new);
                        int i18 = c0606Xi.f4562continue;
                        float f = c0606Xi.f4573this;
                        if (this.f4593this == 0) {
                            i3 = c0606Xi.f4576volatile;
                            i2 = -1;
                            if (i3 != -1) {
                                f = c0606Xi.f4559catch;
                                i18 = i3;
                                c0181Ea5.f850public = i18;
                                c0181Ea5.f823else = f;
                            }
                        } else {
                            i2 = -1;
                        }
                        if (z2 && (i3 = c0606Xi.f4570protected) != i2) {
                            f = c0606Xi.f4561const;
                            i18 = i3;
                        }
                        c0181Ea5.f850public = i18;
                        c0181Ea5.f823else = f;
                    }
                    if (i16 == i9 - 1) {
                        c0181Ea5.m469goto(c0181Ea5.f849new, this.f4592new, this.f4578case);
                    }
                    if (c0181Ea4 != null) {
                        C3985xa c3985xa3 = c0181Ea5.f840if;
                        int i19 = c0606Xi.f4565implements;
                        C3985xa c3985xa4 = c0181Ea4.f849new;
                        c3985xa3.m8644do(c3985xa4, i19);
                        C3985xa c3985xa5 = c0181Ea5.f840if;
                        if (i16 == i11) {
                            int i20 = this.f4591new;
                            if (c3985xa5.m8643case()) {
                                c3985xa5.f16570if = i20;
                            }
                        }
                        c3985xa4.m8644do(c3985xa5, 0);
                        if (i16 == i12 + 1) {
                            int i21 = this.f4578case;
                            if (c3985xa4.m8643case()) {
                                c3985xa4.f16570if = i21;
                            }
                        }
                    }
                    if (c0181Ea5 != c0181Ea3) {
                        if (z) {
                            int i22 = c0606Xi.f4566instanceof;
                            if (i22 == 0) {
                                c0181Ea5.f830for.m8644do(c3985xa, 0);
                            } else if (i22 == 1) {
                                c0181Ea5.f815do.m8644do(c3985xa2, 0);
                            } else if (i22 == 2) {
                                c0181Ea5.f815do.m8644do(c3985xa2, 0);
                                c0181Ea5.f830for.m8644do(c3985xa, 0);
                            }
                            i16++;
                            c0181Ea4 = c0181Ea5;
                        } else {
                            int i23 = c0606Xi.f4566instanceof;
                            if (i23 == 0) {
                                c0181Ea5.f815do.m8644do(c3985xa2, 0);
                            } else if (i23 == 1) {
                                c0181Ea5.f830for.m8644do(c3985xa, 0);
                            } else if (i23 == 2) {
                                if (z3) {
                                    c0181Ea5.f815do.m8644do(this.f4584do, this.f4586for);
                                    c0181Ea5.f830for.m8644do(this.f4587for, this.f4594try);
                                } else {
                                    c0181Ea5.f815do.m8644do(c3985xa2, 0);
                                    c0181Ea5.f830for.m8644do(c3985xa, 0);
                                }
                            }
                            i16++;
                            c0181Ea4 = c0181Ea5;
                        }
                    }
                    i16++;
                    c0181Ea4 = c0181Ea5;
                }
                return;
            }
            C0181Ea c0181Ea6 = this.f4582do;
            c0181Ea6.f850public = c0606Xi.f4562continue;
            int i24 = this.f4591new;
            if (i > 0) {
                i24 += c0606Xi.f4565implements;
            }
            C3985xa c3985xa6 = this.f4590if;
            C3985xa c3985xa7 = c0181Ea6.f840if;
            c3985xa7.m8644do(c3985xa6, i24);
            C3985xa c3985xa8 = c0181Ea6.f849new;
            if (z2) {
                c3985xa8.m8644do(this.f4592new, this.f4578case);
            }
            if (i > 0) {
                this.f4590if.f16565do.f849new.m8644do(c3985xa7, 0);
            }
            if (c0606Xi.f4572synchronized == 3 && !c0181Ea6.f841if) {
                for (int i25 = 0; i25 < i9; i25++) {
                    int i26 = this.f4593this + (z ? (i9 - 1) - i25 : i25);
                    if (i26 >= c0606Xi.d) {
                        break;
                    }
                    c0181Ea = c0606Xi.f4558case[i26];
                    if (c0181Ea.f841if) {
                        break;
                    }
                }
            }
            c0181Ea = c0181Ea6;
            C0181Ea c0181Ea7 = null;
            int i27 = 0;
            while (i27 < i9) {
                int i28 = z ? (i9 - 1) - i27 : i27;
                int i29 = this.f4593this + i28;
                if (i29 >= c0606Xi.d) {
                    return;
                }
                C0181Ea c0181Ea8 = c0606Xi.f4558case[i29];
                if (i27 == 0) {
                    c0181Ea8.m469goto(c0181Ea8.f815do, this.f4584do, this.f4586for);
                }
                if (i28 == 0) {
                    int i30 = c0606Xi.f4556abstract;
                    float f2 = c0606Xi.f4563goto;
                    if (this.f4593this == 0) {
                        i7 = c0606Xi.f4571strictfp;
                        i4 = i30;
                        i5 = -1;
                        if (i7 != -1) {
                            f2 = c0606Xi.f4557break;
                            i6 = i7;
                            c0181Ea8.f846native = i6;
                            c0181Ea8.f800case = f2;
                        }
                    } else {
                        i4 = i30;
                        i5 = -1;
                    }
                    if (!z2 || (i7 = c0606Xi.f4567interface) == i5) {
                        i6 = i4;
                        c0181Ea8.f846native = i6;
                        c0181Ea8.f800case = f2;
                    } else {
                        f2 = c0606Xi.f4560class;
                        i6 = i7;
                        c0181Ea8.f846native = i6;
                        c0181Ea8.f800case = f2;
                    }
                }
                if (i27 == i9 - 1) {
                    c0181Ea8.m469goto(c0181Ea8.f830for, this.f4587for, this.f4594try);
                }
                if (c0181Ea7 != null) {
                    C3985xa c3985xa9 = c0181Ea8.f815do;
                    int i31 = c0606Xi.f4574transient;
                    C3985xa c3985xa10 = c0181Ea7.f830for;
                    c3985xa9.m8644do(c3985xa10, i31);
                    C3985xa c3985xa11 = c0181Ea8.f815do;
                    if (i27 == i11) {
                        int i32 = this.f4586for;
                        if (c3985xa11.m8643case()) {
                            c3985xa11.f16570if = i32;
                        }
                    }
                    c3985xa10.m8644do(c3985xa11, 0);
                    if (i27 == i12 + 1) {
                        int i33 = this.f4594try;
                        if (c3985xa10.m8643case()) {
                            c3985xa10.f16570if = i33;
                        }
                    }
                }
                if (c0181Ea8 != c0181Ea6) {
                    int i34 = c0606Xi.f4572synchronized;
                    if (i34 == 3 && c0181Ea.f841if && c0181Ea8 != c0181Ea && c0181Ea8.f841if) {
                        c0181Ea8.f856try.m8644do(c0181Ea.f856try, 0);
                    } else if (i34 == 0) {
                        c0181Ea8.f840if.m8644do(c3985xa7, 0);
                    } else if (i34 == 1) {
                        c0181Ea8.f849new.m8644do(c3985xa8, 0);
                    } else if (z3) {
                        c0181Ea8.f840if.m8644do(this.f4590if, this.f4591new);
                        c0181Ea8.f849new.m8644do(this.f4592new, this.f4578case);
                    } else {
                        c0181Ea8.f840if.m8644do(c3985xa7, 0);
                        c0181Ea8.f849new.m8644do(c3985xa8, 0);
                    }
                }
                i27++;
                c0181Ea7 = c0181Ea8;
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final int m2866new() {
            return this.f4581do == 0 ? this.f4585else - C0606Xi.this.f4574transient : this.f4585else;
        }

        /* renamed from: try, reason: not valid java name */
        public final void m2867try(int i) {
            int i2 = this.f4579catch;
            if (i2 == 0) {
                return;
            }
            int i3 = this.f4577break;
            int i4 = i / i2;
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = this.f4593this;
                int i7 = i6 + i5;
                C0606Xi c0606Xi = C0606Xi.this;
                if (i7 >= c0606Xi.d) {
                    break;
                }
                C0181Ea c0181Ea = c0606Xi.f4558case[i6 + i5];
                int i8 = this.f4581do;
                C0181Ea.Cdo cdo = C0181Ea.Cdo.FIXED;
                C0181Ea.Cdo cdo2 = C0181Ea.Cdo.MATCH_CONSTRAINT;
                if (i8 == 0) {
                    if (c0181Ea != null) {
                        C0181Ea.Cdo[] cdoArr = c0181Ea.f819do;
                        if (cdoArr[0] == cdo2 && c0181Ea.f828for == 0) {
                            c0606Xi.m448volatile(c0181Ea, cdo, i4, cdoArr[1], c0181Ea.m462const());
                        }
                    }
                } else if (c0181Ea != null) {
                    C0181Ea.Cdo[] cdoArr2 = c0181Ea.f819do;
                    if (cdoArr2[1] == cdo2 && c0181Ea.f848new == 0) {
                        c0606Xi.m448volatile(c0181Ea, cdoArr2[0], c0181Ea.m481throw(), cdo, i4);
                    }
                }
            }
            this.f4585else = 0;
            this.f4588goto = 0;
            this.f4582do = null;
            this.f4589if = 0;
            int i9 = this.f4577break;
            for (int i10 = 0; i10 < i9; i10++) {
                int i11 = this.f4593this + i10;
                C0606Xi c0606Xi2 = C0606Xi.this;
                if (i11 >= c0606Xi2.d) {
                    return;
                }
                C0181Ea c0181Ea2 = c0606Xi2.f4558case[i11];
                if (this.f4581do == 0) {
                    int m481throw = c0181Ea2.m481throw();
                    int i12 = c0606Xi2.f4574transient;
                    if (c0181Ea2.f845import == 8) {
                        i12 = 0;
                    }
                    this.f4585else = m481throw + i12 + this.f4585else;
                    int m2860interface = c0606Xi2.m2860interface(c0181Ea2, this.f4580class);
                    if (this.f4582do == null || this.f4589if < m2860interface) {
                        this.f4582do = c0181Ea2;
                        this.f4589if = m2860interface;
                        this.f4588goto = m2860interface;
                    }
                } else {
                    int m2861protected = c0606Xi2.m2861protected(c0181Ea2, this.f4580class);
                    int m2860interface2 = c0606Xi2.m2860interface(c0181Ea2, this.f4580class);
                    int i13 = c0606Xi2.f4565implements;
                    if (c0181Ea2.f845import == 8) {
                        i13 = 0;
                    }
                    this.f4588goto = m2860interface2 + i13 + this.f4588goto;
                    if (this.f4582do == null || this.f4589if < m2861protected) {
                        this.f4582do = c0181Ea2;
                        this.f4589if = m2861protected;
                        this.f4585else = m2861protected;
                    }
                }
            }
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final int m2860interface(C0181Ea c0181Ea, int i) {
        if (c0181Ea == null) {
            return 0;
        }
        if (c0181Ea.f819do[1] == C0181Ea.Cdo.MATCH_CONSTRAINT) {
            int i2 = c0181Ea.f848new;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (c0181Ea.f835if * i);
                if (i3 != c0181Ea.m462const()) {
                    m448volatile(c0181Ea, c0181Ea.f819do[0], c0181Ea.m481throw(), C0181Ea.Cdo.FIXED, i3);
                }
                return i3;
            }
            if (i2 == 1) {
                return c0181Ea.m462const();
            }
            if (i2 == 3) {
                return (int) ((c0181Ea.m481throw() * c0181Ea.f854try) + 0.5f);
            }
        }
        return c0181Ea.m462const();
    }

    @Override // defpackage.C0181Ea
    /* renamed from: new */
    public final void mo472new(C3706sq c3706sq) {
        C0181Ea c0181Ea;
        super.mo472new(c3706sq);
        C0181Ea c0181Ea2 = ((C0181Ea) this).f808do;
        boolean z = c0181Ea2 != null ? ((C0203Fa) c0181Ea2).f1067new : false;
        int i = this.a;
        ArrayList<Cdo> arrayList = this.f4564if;
        if (i != 0) {
            if (i == 1) {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    arrayList.get(i2).m2865if(i2, z, i2 == size + (-1));
                    i2++;
                }
            } else if (i == 2 && this.f4568new != null && this.f4575try != null && this.f4569new != null) {
                for (int i3 = 0; i3 < this.d; i3++) {
                    this.f4558case[i3].m482throws();
                }
                int[] iArr = this.f4568new;
                int i4 = iArr[0];
                int i5 = iArr[1];
                C0181Ea c0181Ea3 = null;
                for (int i6 = 0; i6 < i4; i6++) {
                    C0181Ea c0181Ea4 = this.f4575try[z ? (i4 - i6) - 1 : i6];
                    if (c0181Ea4 != null && c0181Ea4.f845import != 8) {
                        C3985xa c3985xa = c0181Ea4.f815do;
                        if (i6 == 0) {
                            c0181Ea4.m469goto(c3985xa, ((C0181Ea) this).f815do, this.f772extends);
                            c0181Ea4.f846native = this.f4556abstract;
                            c0181Ea4.f800case = this.f4563goto;
                        }
                        if (i6 == i4 - 1) {
                            c0181Ea4.m469goto(c0181Ea4.f830for, ((C0181Ea) this).f830for, this.f773finally);
                        }
                        if (i6 > 0) {
                            c0181Ea4.m469goto(c3985xa, c0181Ea3.f830for, this.f4574transient);
                            c0181Ea3.m469goto(c0181Ea3.f830for, c3985xa, 0);
                        }
                        c0181Ea3 = c0181Ea4;
                    }
                }
                for (int i7 = 0; i7 < i5; i7++) {
                    C0181Ea c0181Ea5 = this.f4569new[i7];
                    if (c0181Ea5 != null && c0181Ea5.f845import != 8) {
                        C3985xa c3985xa2 = c0181Ea5.f840if;
                        if (i7 == 0) {
                            c0181Ea5.m469goto(c3985xa2, ((C0181Ea) this).f840if, this.f777static);
                            c0181Ea5.f850public = this.f4562continue;
                            c0181Ea5.f823else = this.f4573this;
                        }
                        if (i7 == i5 - 1) {
                            c0181Ea5.m469goto(c0181Ea5.f849new, ((C0181Ea) this).f849new, this.f778switch);
                        }
                        if (i7 > 0) {
                            c0181Ea5.m469goto(c3985xa2, c0181Ea3.f849new, this.f4565implements);
                            c0181Ea3.m469goto(c0181Ea3.f849new, c3985xa2, 0);
                        }
                        c0181Ea3 = c0181Ea5;
                    }
                }
                for (int i8 = 0; i8 < i4; i8++) {
                    for (int i9 = 0; i9 < i5; i9++) {
                        int i10 = (i9 * i4) + i8;
                        if (this.c == 1) {
                            i10 = (i8 * i5) + i9;
                        }
                        C0181Ea[] c0181EaArr = this.f4558case;
                        if (i10 < c0181EaArr.length && (c0181Ea = c0181EaArr[i10]) != null && c0181Ea.f845import != 8) {
                            C0181Ea c0181Ea6 = this.f4575try[i8];
                            C0181Ea c0181Ea7 = this.f4569new[i9];
                            if (c0181Ea != c0181Ea6) {
                                c0181Ea.m469goto(c0181Ea.f815do, c0181Ea6.f815do, 0);
                                c0181Ea.m469goto(c0181Ea.f830for, c0181Ea6.f830for, 0);
                            }
                            if (c0181Ea != c0181Ea7) {
                                c0181Ea.m469goto(c0181Ea.f840if, c0181Ea7.f840if, 0);
                                c0181Ea.m469goto(c0181Ea.f849new, c0181Ea7.f849new, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            arrayList.get(0).m2865if(0, z, true);
        }
        ((EL) this).f774new = false;
    }

    /* renamed from: protected, reason: not valid java name */
    public final int m2861protected(C0181Ea c0181Ea, int i) {
        if (c0181Ea == null) {
            return 0;
        }
        if (c0181Ea.f819do[0] == C0181Ea.Cdo.MATCH_CONSTRAINT) {
            int i2 = c0181Ea.f828for;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (c0181Ea.f806do * i);
                if (i3 != c0181Ea.m481throw()) {
                    m448volatile(c0181Ea, C0181Ea.Cdo.FIXED, i3, c0181Ea.f819do[1], c0181Ea.m462const());
                }
                return i3;
            }
            if (i2 == 1) {
                return c0181Ea.m481throw();
            }
            if (i2 == 3) {
                return (int) ((c0181Ea.m462const() * c0181Ea.f854try) + 0.5f);
            }
        }
        return c0181Ea.m481throw();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x05da  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x05ec  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:178:0x0298 -> B:118:0x02a3). Please report as a decompilation issue!!! */
    @Override // defpackage.EL
    /* renamed from: strictfp */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo447strictfp(int r37, int r38, int r39, int r40) {
        /*
            Method dump skipped, instructions count: 1548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0606Xi.mo447strictfp(int, int, int, int):void");
    }

    @Override // defpackage.C2710em, defpackage.C0181Ea
    /* renamed from: this */
    public final void mo480this(C0181Ea c0181Ea, HashMap<C0181Ea, C0181Ea> hashMap) {
        super.mo480this(c0181Ea, hashMap);
        C0606Xi c0606Xi = (C0606Xi) c0181Ea;
        this.f4556abstract = c0606Xi.f4556abstract;
        this.f4562continue = c0606Xi.f4562continue;
        this.f4571strictfp = c0606Xi.f4571strictfp;
        this.f4576volatile = c0606Xi.f4576volatile;
        this.f4567interface = c0606Xi.f4567interface;
        this.f4570protected = c0606Xi.f4570protected;
        this.f4563goto = c0606Xi.f4563goto;
        this.f4573this = c0606Xi.f4573this;
        this.f4557break = c0606Xi.f4557break;
        this.f4559catch = c0606Xi.f4559catch;
        this.f4560class = c0606Xi.f4560class;
        this.f4561const = c0606Xi.f4561const;
        this.f4574transient = c0606Xi.f4574transient;
        this.f4565implements = c0606Xi.f4565implements;
        this.f4566instanceof = c0606Xi.f4566instanceof;
        this.f4572synchronized = c0606Xi.f4572synchronized;
        this.a = c0606Xi.a;
        this.b = c0606Xi.b;
        this.c = c0606Xi.c;
    }
}
