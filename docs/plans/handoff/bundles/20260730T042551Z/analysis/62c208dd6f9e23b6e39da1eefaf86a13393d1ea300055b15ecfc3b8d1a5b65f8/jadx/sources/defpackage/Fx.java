package defpackage;

import defpackage.G2;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class Fx extends G2 {

    /* renamed from: do, reason: not valid java name */
    public int f1095do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f1096do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HE[] f1097do;

    /* renamed from: if, reason: not valid java name */
    public HE[] f1098if;

    /* renamed from: Fx$do, reason: invalid class name */
    public class Cdo implements Comparator<HE> {
        @Override // java.util.Comparator
        public final int compare(HE he, HE he2) {
            return he.f1316do - he2.f1316do;
        }
    }

    /* renamed from: Fx$if, reason: invalid class name */
    public class Cif implements Comparable {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public HE f1100do;

        public Cif() {
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f1100do.f1316do - ((HE) obj).f1316do;
        }

        public final String toString() {
            String str = "[ ";
            if (this.f1100do != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.f1100do.f1323if[i] + " ";
                }
            }
            StringBuilder m6916goto = defpackage.Cif.m6916goto(str, "] ");
            m6916goto.append(this.f1100do);
            return m6916goto.toString();
        }
    }

    public Fx(C2861hI c2861hI) {
        super(c2861hI);
        this.f1097do = new HE[128];
        this.f1098if = new HE[128];
        this.f1095do = 0;
        this.f1096do = new Cif();
    }

    /* renamed from: break, reason: not valid java name */
    public final void m654break(HE he) {
        int i = 0;
        while (i < this.f1095do) {
            if (this.f1097do[i] == he) {
                while (true) {
                    int i2 = this.f1095do;
                    if (i >= i2 - 1) {
                        this.f1095do = i2 - 1;
                        he.f1317do = false;
                        return;
                    } else {
                        HE[] heArr = this.f1097do;
                        int i3 = i + 1;
                        heArr[i] = heArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
    
        if (r9 < r8) goto L30;
     */
    @Override // defpackage.G2, defpackage.C3706sq.Cdo
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.HE mo655do(boolean[] r12) {
        /*
            r11 = this;
            r0 = -1
            r1 = 0
            r2 = 0
            r3 = -1
        L4:
            int r4 = r11.f1095do
            if (r2 >= r4) goto L57
            HE[] r4 = r11.f1097do
            r5 = r4[r2]
            int r6 = r5.f1316do
            boolean r6 = r12[r6]
            if (r6 == 0) goto L13
            goto L54
        L13:
            Fx$if r6 = r11.f1096do
            r6.f1100do = r5
            r5 = 1
            r7 = 8
            if (r3 != r0) goto L36
        L1c:
            if (r7 < 0) goto L32
            HE r4 = r6.f1100do
            float[] r4 = r4.f1323if
            r4 = r4[r7]
            r8 = 0
            int r9 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r9 <= 0) goto L2a
            goto L32
        L2a:
            int r4 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r4 >= 0) goto L2f
            goto L33
        L2f:
            int r7 = r7 + (-1)
            goto L1c
        L32:
            r5 = 0
        L33:
            if (r5 == 0) goto L54
            goto L53
        L36:
            r4 = r4[r3]
        L38:
            if (r7 < 0) goto L50
            float[] r8 = r4.f1323if
            r8 = r8[r7]
            HE r9 = r6.f1100do
            float[] r9 = r9.f1323if
            r9 = r9[r7]
            int r10 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r10 != 0) goto L4b
            int r7 = r7 + (-1)
            goto L38
        L4b:
            int r4 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r4 >= 0) goto L50
            goto L51
        L50:
            r5 = 0
        L51:
            if (r5 == 0) goto L54
        L53:
            r3 = r2
        L54:
            int r2 = r2 + 1
            goto L4
        L57:
            if (r3 != r0) goto L5b
            r12 = 0
            return r12
        L5b:
            HE[] r12 = r11.f1097do
            r12 = r12[r3]
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Fx.mo655do(boolean[]):HE");
    }

    @Override // defpackage.G2
    /* renamed from: goto, reason: not valid java name */
    public final void mo656goto(G2 g2, boolean z) {
        boolean z2;
        HE he = g2.f1117do;
        if (he == null) {
            return;
        }
        G2.Cdo cdo = g2.f1116do;
        int mo334if = cdo.mo334if();
        for (int i = 0; i < mo334if; i++) {
            HE mo330do = cdo.mo330do(i);
            float mo329catch = cdo.mo329catch(i);
            Cif cif = this.f1096do;
            cif.f1100do = mo330do;
            boolean z3 = mo330do.f1317do;
            float[] fArr = he.f1323if;
            if (z3) {
                boolean z4 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = cif.f1100do.f1323if;
                    float f = (fArr[i2] * mo329catch) + fArr2[i2];
                    fArr2[i2] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        cif.f1100do.f1323if[i2] = 0.0f;
                    } else {
                        z4 = false;
                    }
                }
                if (z4) {
                    Fx.this.m654break(cif.f1100do);
                }
                z2 = false;
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f2 = fArr[i3];
                    if (f2 != 0.0f) {
                        float f3 = f2 * mo329catch;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        cif.f1100do.f1323if[i3] = f3;
                    } else {
                        cif.f1100do.f1323if[i3] = 0.0f;
                    }
                }
                z2 = true;
            }
            if (z2) {
                m657this(mo330do);
            }
            ((G2) this).f1115do = (g2.f1115do * mo329catch) + ((G2) this).f1115do;
        }
        m654break(he);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m657this(HE he) {
        int i;
        int i2 = this.f1095do + 1;
        HE[] heArr = this.f1097do;
        if (i2 > heArr.length) {
            HE[] heArr2 = (HE[]) Arrays.copyOf(heArr, heArr.length * 2);
            this.f1097do = heArr2;
            this.f1098if = (HE[]) Arrays.copyOf(heArr2, heArr2.length * 2);
        }
        HE[] heArr3 = this.f1097do;
        int i3 = this.f1095do;
        heArr3[i3] = he;
        int i4 = i3 + 1;
        this.f1095do = i4;
        if (i4 > 1 && heArr3[i4 - 1].f1316do > he.f1316do) {
            int i5 = 0;
            while (true) {
                i = this.f1095do;
                if (i5 >= i) {
                    break;
                }
                this.f1098if[i5] = this.f1097do[i5];
                i5++;
            }
            Arrays.sort(this.f1098if, 0, i, new Cdo());
            for (int i6 = 0; i6 < this.f1095do; i6++) {
                this.f1097do[i6] = this.f1098if[i6];
            }
        }
        he.f1317do = true;
        he.m822do(this);
    }

    @Override // defpackage.G2
    public final String toString() {
        String str = " goal -> (" + ((G2) this).f1115do + ") : ";
        for (int i = 0; i < this.f1095do; i++) {
            HE he = this.f1097do[i];
            Cif cif = this.f1096do;
            cif.f1100do = he;
            str = str + cif + " ";
        }
        return str;
    }
}
