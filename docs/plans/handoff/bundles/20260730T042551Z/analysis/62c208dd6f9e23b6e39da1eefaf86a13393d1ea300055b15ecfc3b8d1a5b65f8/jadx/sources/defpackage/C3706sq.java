package defpackage;

import java.util.Arrays;

/* renamed from: sq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3706sq {

    /* renamed from: goto, reason: not valid java name */
    public static int f15523goto = 1000;

    /* renamed from: if, reason: not valid java name */
    public static boolean f15524if = true;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Fx f15527do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public G2 f15528do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2861hI f15529do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public G2[] f15531do;

    /* renamed from: do, reason: not valid java name */
    public int f15526do = 0;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f15536if = 32;

    /* renamed from: for, reason: not valid java name */
    public int f15535for = 32;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15530do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean[] f15533do = new boolean[32];

    /* renamed from: new, reason: not valid java name */
    public int f15537new = 1;

    /* renamed from: try, reason: not valid java name */
    public int f15538try = 0;

    /* renamed from: case, reason: not valid java name */
    public int f15525case = 32;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HE[] f15532do = new HE[f15523goto];

    /* renamed from: else, reason: not valid java name */
    public int f15534else = 0;

    /* renamed from: sq$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        HE mo655do(boolean[] zArr);
    }

    /* renamed from: sq$if, reason: invalid class name */
    public class Cif extends G2 {
        public Cif(C2861hI c2861hI) {
            ((G2) this).f1116do = new IE(this, c2861hI);
        }
    }

    public C3706sq() {
        this.f15531do = null;
        this.f15531do = new G2[32];
        m8161while();
        C2861hI c2861hI = new C2861hI();
        this.f15529do = c2861hI;
        this.f15527do = new Fx(c2861hI);
        if (f15524if) {
            this.f15528do = new Cif(c2861hI);
        } else {
            this.f15528do = new G2(c2861hI);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static int m8144const(C3985xa c3985xa) {
        HE he = c3985xa.f16566do;
        if (he != null) {
            return (int) (he.f1315do + 0.5f);
        }
        return 0;
    }

    /* renamed from: break, reason: not valid java name */
    public final HE m8145break(Object obj) {
        HE he = null;
        if (obj == null) {
            return null;
        }
        if (this.f15537new + 1 >= this.f15535for) {
            m8151final();
        }
        if (obj instanceof C3985xa) {
            C3985xa c3985xa = (C3985xa) obj;
            he = c3985xa.f16566do;
            if (he == null) {
                c3985xa.m8650this();
                he = c3985xa.f16566do;
            }
            int i = he.f1316do;
            C2861hI c2861hI = this.f15529do;
            if (i == -1 || i > this.f15526do || ((HE[]) c2861hI.f13292new)[i] == null) {
                if (i != -1) {
                    he.m823for();
                }
                int i2 = this.f15526do + 1;
                this.f15526do = i2;
                this.f15537new++;
                he.f1316do = i2;
                he.f1324new = 1;
                ((HE[]) c2861hI.f13292new)[i2] = he;
            }
        }
        return he;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m8146case(HE he, HE he2, int i, int i2) {
        G2 m8147catch = m8147catch();
        HE m8148class = m8148class();
        m8148class.f1320for = 0;
        m8147catch.m698for(he, he2, m8148class, i);
        if (i2 != 8) {
            m8147catch.f1116do.mo327break(m8158this(i2), (int) (m8147catch.f1116do.mo333goto(m8148class) * (-1.0f)));
        }
        m8152for(m8147catch);
    }

    /* renamed from: catch, reason: not valid java name */
    public final G2 m8147catch() {
        boolean z = f15524if;
        C2861hI c2861hI = this.f15529do;
        if (z) {
            G2 g2 = (G2) ((C2604cx) c2861hI.f13289do).m6401do();
            if (g2 == null) {
                return new Cif(c2861hI);
            }
            g2.f1117do = null;
            g2.f1116do.clear();
            g2.f1115do = 0.0f;
            g2.f1119do = false;
            return g2;
        }
        G2 g22 = (G2) ((C2604cx) c2861hI.f13291if).m6401do();
        if (g22 == null) {
            return new G2(c2861hI);
        }
        g22.f1117do = null;
        g22.f1116do.clear();
        g22.f1115do = 0.0f;
        g22.f1119do = false;
        return g22;
    }

    /* renamed from: class, reason: not valid java name */
    public final HE m8148class() {
        if (this.f15537new + 1 >= this.f15535for) {
            m8151final();
        }
        HE m8149do = m8149do(3);
        int i = this.f15526do + 1;
        this.f15526do = i;
        this.f15537new++;
        m8149do.f1316do = i;
        ((HE[]) this.f15529do.f13292new)[i] = m8149do;
        return m8149do;
    }

    /* renamed from: do, reason: not valid java name */
    public final HE m8149do(int i) {
        HE he = (HE) ((C2604cx) this.f15529do.f13290for).m6401do();
        if (he == null) {
            he = new HE(i);
            he.f1324new = i;
        } else {
            he.m823for();
            he.f1324new = i;
        }
        int i2 = this.f15534else;
        int i3 = f15523goto;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            f15523goto = i4;
            this.f15532do = (HE[]) Arrays.copyOf(this.f15532do, i4);
        }
        HE[] heArr = this.f15532do;
        int i5 = this.f15534else;
        this.f15534else = i5 + 1;
        heArr[i5] = he;
        return he;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8150else(HE he, HE he2, int i, int i2) {
        G2 m8147catch = m8147catch();
        HE m8148class = m8148class();
        m8148class.f1320for = 0;
        m8147catch.m700new(he, he2, m8148class, i);
        if (i2 != 8) {
            m8147catch.f1116do.mo327break(m8158this(i2), (int) (m8147catch.f1116do.mo333goto(m8148class) * (-1.0f)));
        }
        m8152for(m8147catch);
    }

    /* renamed from: final, reason: not valid java name */
    public final void m8151final() {
        int i = this.f15536if * 2;
        this.f15536if = i;
        this.f15531do = (G2[]) Arrays.copyOf(this.f15531do, i);
        C2861hI c2861hI = this.f15529do;
        c2861hI.f13292new = (HE[]) Arrays.copyOf((HE[]) c2861hI.f13292new, this.f15536if);
        int i2 = this.f15536if;
        this.f15533do = new boolean[i2];
        this.f15535for = i2;
        this.f15525case = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00bf, code lost:
    
        if (r4.f1314case <= 1) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00cc, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ca, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c8, code lost:
    
        if (r4.f1314case <= 1) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00e9, code lost:
    
        if (r4.f1314case <= 1) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00f6, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00f4, code lost:
    
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00f2, code lost:
    
        if (r4.f1314case <= 1) goto L80;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8152for(defpackage.G2 r17) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3706sq.m8152for(G2):void");
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8153goto(G2 g2) {
        boolean z = f15524if;
        C2861hI c2861hI = this.f15529do;
        if (z) {
            G2 g22 = this.f15531do[this.f15538try];
            if (g22 != null) {
                ((C2604cx) c2861hI.f13289do).m6402if(g22);
            }
        } else {
            G2 g23 = this.f15531do[this.f15538try];
            if (g23 != null) {
                ((C2604cx) c2861hI.f13291if).m6402if(g23);
            }
        }
        G2[] g2Arr = this.f15531do;
        int i = this.f15538try;
        g2Arr[i] = g2;
        HE he = g2.f1117do;
        he.f1321if = i;
        this.f15538try = i + 1;
        he.m825new(g2);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8154if(HE he, HE he2, int i, float f, HE he3, HE he4, int i2, int i3) {
        G2 m8147catch = m8147catch();
        if (he2 == he3) {
            m8147catch.f1116do.mo327break(he, 1.0f);
            m8147catch.f1116do.mo327break(he4, 1.0f);
            m8147catch.f1116do.mo327break(he2, -2.0f);
        } else if (f == 0.5f) {
            m8147catch.f1116do.mo327break(he, 1.0f);
            m8147catch.f1116do.mo327break(he2, -1.0f);
            m8147catch.f1116do.mo327break(he3, -1.0f);
            m8147catch.f1116do.mo327break(he4, 1.0f);
            if (i > 0 || i2 > 0) {
                m8147catch.f1115do = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            m8147catch.f1116do.mo327break(he, -1.0f);
            m8147catch.f1116do.mo327break(he2, 1.0f);
            m8147catch.f1115do = i;
        } else if (f >= 1.0f) {
            m8147catch.f1116do.mo327break(he4, -1.0f);
            m8147catch.f1116do.mo327break(he3, 1.0f);
            m8147catch.f1115do = -i2;
        } else {
            float f2 = 1.0f - f;
            m8147catch.f1116do.mo327break(he, f2 * 1.0f);
            m8147catch.f1116do.mo327break(he2, f2 * (-1.0f));
            m8147catch.f1116do.mo327break(he3, (-1.0f) * f);
            m8147catch.f1116do.mo327break(he4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                m8147catch.f1115do = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            m8147catch.m699if(this, i3);
        }
        m8152for(m8147catch);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m8155import() {
        C2861hI c2861hI;
        int i = 0;
        while (true) {
            c2861hI = this.f15529do;
            HE[] heArr = (HE[]) c2861hI.f13292new;
            if (i >= heArr.length) {
                break;
            }
            HE he = heArr[i];
            if (he != null) {
                he.m823for();
            }
            i++;
        }
        C2604cx c2604cx = (C2604cx) c2861hI.f13290for;
        HE[] heArr2 = this.f15532do;
        int i2 = this.f15534else;
        c2604cx.getClass();
        if (i2 > heArr2.length) {
            i2 = heArr2.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            HE he2 = heArr2[i3];
            int i4 = c2604cx.f12408do;
            Object[] objArr = c2604cx.f12409do;
            if (i4 < objArr.length) {
                objArr[i4] = he2;
                c2604cx.f12408do = i4 + 1;
            }
        }
        this.f15534else = 0;
        Arrays.fill((HE[]) c2861hI.f13292new, (Object) null);
        this.f15526do = 0;
        Fx fx = this.f15527do;
        fx.f1095do = 0;
        ((G2) fx).f1115do = 0.0f;
        this.f15537new = 1;
        for (int i5 = 0; i5 < this.f15538try; i5++) {
            this.f15531do[i5].getClass();
        }
        m8161while();
        this.f15538try = 0;
        if (f15524if) {
            this.f15528do = new Cif(c2861hI);
        } else {
            this.f15528do = new G2(c2861hI);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8156new(HE he, int i) {
        int i2 = he.f1321if;
        if (i2 == -1) {
            he.f1315do = i;
            he.f1322if = true;
            int i3 = he.f1325try;
            for (int i4 = 0; i4 < i3; i4++) {
                he.f1319do[i4].m697else(he, false);
            }
            he.f1325try = 0;
            return;
        }
        if (i2 == -1) {
            G2 m8147catch = m8147catch();
            m8147catch.f1117do = he;
            float f = i;
            he.f1315do = f;
            m8147catch.f1115do = f;
            m8147catch.f1119do = true;
            m8152for(m8147catch);
            return;
        }
        G2 g2 = this.f15531do[i2];
        if (g2.f1119do) {
            g2.f1115do = i;
            return;
        }
        if (g2.f1116do.mo334if() == 0) {
            g2.f1119do = true;
            g2.f1115do = i;
            return;
        }
        G2 m8147catch2 = m8147catch();
        if (i < 0) {
            m8147catch2.f1115do = i * (-1);
            m8147catch2.f1116do.mo327break(he, 1.0f);
        } else {
            m8147catch2.f1115do = i;
            m8147catch2.f1116do.mo327break(he, -1.0f);
        }
        m8152for(m8147catch2);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m8157super(Fx fx) {
        float f;
        int i;
        boolean z;
        C2861hI c2861hI;
        int i2 = 0;
        while (true) {
            f = 0.0f;
            i = 1;
            if (i2 >= this.f15538try) {
                z = false;
                break;
            }
            G2 g2 = this.f15531do[i2];
            if (g2.f1117do.f1324new != 1 && g2.f1115do < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            int i3 = 0;
            while (!z2) {
                i3 += i;
                float f2 = Float.MAX_VALUE;
                int i4 = 0;
                int i5 = -1;
                int i6 = -1;
                int i7 = 0;
                while (true) {
                    int i8 = this.f15538try;
                    c2861hI = this.f15529do;
                    if (i4 >= i8) {
                        break;
                    }
                    G2 g22 = this.f15531do[i4];
                    if (g22.f1117do.f1324new != i && !g22.f1119do && g22.f1115do < f) {
                        int i9 = 1;
                        while (i9 < this.f15537new) {
                            HE he = ((HE[]) c2861hI.f13292new)[i9];
                            float mo333goto = g22.f1116do.mo333goto(he);
                            if (mo333goto > f) {
                                for (int i10 = 0; i10 < 9; i10++) {
                                    float f3 = he.f1318do[i10] / mo333goto;
                                    if ((f3 < f2 && i10 == i7) || i10 > i7) {
                                        i7 = i10;
                                        f2 = f3;
                                        i5 = i4;
                                        i6 = i9;
                                    }
                                }
                            }
                            i9++;
                            f = 0.0f;
                        }
                    }
                    i4++;
                    f = 0.0f;
                    i = 1;
                }
                if (i5 != -1) {
                    G2 g23 = this.f15531do[i5];
                    g23.f1117do.f1321if = -1;
                    g23.m696case(((HE[]) c2861hI.f13292new)[i6]);
                    HE he2 = g23.f1117do;
                    he2.f1321if = i5;
                    he2.m825new(g23);
                } else {
                    z2 = true;
                }
                if (i3 > this.f15537new / 2) {
                    z2 = true;
                }
                f = 0.0f;
                i = 1;
            }
        }
        m8159throw(fx);
        for (int i11 = 0; i11 < this.f15538try; i11++) {
            G2 g24 = this.f15531do[i11];
            g24.f1117do.f1315do = g24.f1115do;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final HE m8158this(int i) {
        if (this.f15537new + 1 >= this.f15535for) {
            m8151final();
        }
        HE m8149do = m8149do(4);
        int i2 = this.f15526do + 1;
        this.f15526do = i2;
        this.f15537new++;
        m8149do.f1316do = i2;
        m8149do.f1320for = i;
        ((HE[]) this.f15529do.f13292new)[i2] = m8149do;
        Fx fx = this.f15527do;
        fx.f1096do.f1100do = m8149do;
        float[] fArr = m8149do.f1323if;
        Arrays.fill(fArr, 0.0f);
        fArr[m8149do.f1320for] = 1.0f;
        fx.m657this(m8149do);
        return m8149do;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m8159throw(G2 g2) {
        for (int i = 0; i < this.f15537new; i++) {
            this.f15533do[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        while (!z) {
            i2++;
            if (i2 >= this.f15537new * 2) {
                return;
            }
            HE he = g2.f1117do;
            if (he != null) {
                this.f15533do[he.f1316do] = true;
            }
            HE mo655do = g2.mo655do(this.f15533do);
            if (mo655do != null) {
                boolean[] zArr = this.f15533do;
                int i3 = mo655do.f1316do;
                if (zArr[i3]) {
                    return;
                } else {
                    zArr[i3] = true;
                }
            }
            if (mo655do != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.f15538try; i5++) {
                    G2 g22 = this.f15531do[i5];
                    if (g22.f1117do.f1324new != 1 && !g22.f1119do && g22.f1116do.mo337try(mo655do)) {
                        float mo333goto = g22.f1116do.mo333goto(mo655do);
                        if (mo333goto < 0.0f) {
                            float f2 = (-g22.f1115do) / mo333goto;
                            if (f2 < f) {
                                i4 = i5;
                                f = f2;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    G2 g23 = this.f15531do[i4];
                    g23.f1117do.f1321if = -1;
                    g23.m696case(mo655do);
                    HE he2 = g23.f1117do;
                    he2.f1321if = i4;
                    he2.m825new(g23);
                }
            } else {
                z = true;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m8160try(HE he, HE he2, int i, int i2) {
        boolean z = true;
        boolean z2 = false;
        if (i2 == 8 && he2.f1322if && he.f1321if == -1) {
            he.f1315do = he2.f1315do + i;
            he.f1322if = true;
            int i3 = he.f1325try;
            for (int i4 = 0; i4 < i3; i4++) {
                he.f1319do[i4].m697else(he, false);
            }
            he.f1325try = 0;
            return;
        }
        G2 m8147catch = m8147catch();
        if (i != 0) {
            if (i < 0) {
                i *= -1;
            } else {
                z = false;
            }
            m8147catch.f1115do = i;
            z2 = z;
        }
        if (z2) {
            m8147catch.f1116do.mo327break(he, 1.0f);
            m8147catch.f1116do.mo327break(he2, -1.0f);
        } else {
            m8147catch.f1116do.mo327break(he, -1.0f);
            m8147catch.f1116do.mo327break(he2, 1.0f);
        }
        if (i2 != 8) {
            m8147catch.m699if(this, i2);
        }
        m8152for(m8147catch);
    }

    /* renamed from: while, reason: not valid java name */
    public final void m8161while() {
        boolean z = f15524if;
        C2861hI c2861hI = this.f15529do;
        int i = 0;
        if (z) {
            while (true) {
                G2[] g2Arr = this.f15531do;
                if (i >= g2Arr.length) {
                    return;
                }
                G2 g2 = g2Arr[i];
                if (g2 != null) {
                    ((C2604cx) c2861hI.f13289do).m6402if(g2);
                }
                this.f15531do[i] = null;
                i++;
            }
        } else {
            while (true) {
                G2[] g2Arr2 = this.f15531do;
                if (i >= g2Arr2.length) {
                    return;
                }
                G2 g22 = g2Arr2[i];
                if (g22 != null) {
                    ((C2604cx) c2861hI.f13291if).m6402if(g22);
                }
                this.f15531do[i] = null;
                i++;
            }
        }
    }
}
