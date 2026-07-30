package defpackage;

import com.facebook.appevents.integrity.IntegrityManager;
import defpackage.G2;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class IE implements G2.Cdo {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final G2 f1468do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2861hI f1469do;

    /* renamed from: do, reason: not valid java name */
    public int f1467do = 16;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f1471do = new int[16];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int[] f1475if = new int[16];

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int[] f1473for = new int[16];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f1470do = new float[16];

    /* renamed from: new, reason: not valid java name */
    public int[] f1476new = new int[16];

    /* renamed from: try, reason: not valid java name */
    public int[] f1477try = new int[16];

    /* renamed from: if, reason: not valid java name */
    public int f1474if = 0;

    /* renamed from: for, reason: not valid java name */
    public int f1472for = -1;

    public IE(G2 g2, C2861hI c2861hI) {
        this.f1468do = g2;
        this.f1469do = c2861hI;
        clear();
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: break */
    public final void mo327break(HE he, float f) {
        if (f > -0.001f && f < 0.001f) {
            mo336this(he, true);
            return;
        }
        int i = 0;
        if (this.f1474if == 0) {
            m922const(0, he, f);
            m921class(he, 0);
            this.f1472for = 0;
            return;
        }
        int m923final = m923final(he);
        if (m923final != -1) {
            this.f1470do[m923final] = f;
            return;
        }
        int i2 = this.f1474if + 1;
        int i3 = this.f1467do;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            this.f1473for = Arrays.copyOf(this.f1473for, i4);
            this.f1470do = Arrays.copyOf(this.f1470do, i4);
            this.f1476new = Arrays.copyOf(this.f1476new, i4);
            this.f1477try = Arrays.copyOf(this.f1477try, i4);
            this.f1475if = Arrays.copyOf(this.f1475if, i4);
            for (int i5 = this.f1467do; i5 < i4; i5++) {
                this.f1473for[i5] = -1;
                this.f1475if[i5] = -1;
            }
            this.f1467do = i4;
        }
        int i6 = this.f1474if;
        int i7 = this.f1472for;
        int i8 = -1;
        for (int i9 = 0; i9 < i6; i9++) {
            int i10 = this.f1473for[i7];
            int i11 = he.f1316do;
            if (i10 == i11) {
                this.f1470do[i7] = f;
                return;
            }
            if (i10 < i11) {
                i8 = i7;
            }
            i7 = this.f1477try[i7];
            if (i7 == -1) {
                break;
            }
        }
        while (true) {
            if (i >= this.f1467do) {
                i = -1;
                break;
            } else if (this.f1473for[i] == -1) {
                break;
            } else {
                i++;
            }
        }
        m922const(i, he, f);
        if (i8 != -1) {
            this.f1476new[i] = i8;
            int[] iArr = this.f1477try;
            iArr[i] = iArr[i8];
            iArr[i8] = i;
        } else {
            this.f1476new[i] = -1;
            if (this.f1474if > 0) {
                this.f1477try[i] = this.f1472for;
                this.f1472for = i;
            } else {
                this.f1477try[i] = -1;
            }
        }
        int i12 = this.f1477try[i];
        if (i12 != -1) {
            this.f1476new[i12] = i;
        }
        m921class(he, i);
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: case */
    public final float mo328case(G2 g2, boolean z) {
        float mo333goto = mo333goto(g2.f1117do);
        mo336this(g2.f1117do, z);
        IE ie = (IE) g2.f1116do;
        int i = ie.f1474if;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = ie.f1473for[i3];
            if (i4 != -1) {
                mo331else(((HE[]) this.f1469do.f13292new)[i4], ie.f1470do[i3] * mo333goto, z);
                i2++;
            }
            i3++;
        }
        return mo333goto;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: catch */
    public final float mo329catch(int i) {
        int i2 = this.f1474if;
        int i3 = this.f1472for;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f1470do[i3];
            }
            i3 = this.f1477try[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m921class(HE he, int i) {
        int[] iArr;
        int i2 = he.f1316do % 16;
        int[] iArr2 = this.f1471do;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f1475if;
                int i4 = iArr[i3];
                if (i4 == -1) {
                    break;
                } else {
                    i3 = i4;
                }
            }
            iArr[i3] = i;
        }
        this.f1475if[i] = -1;
    }

    @Override // defpackage.G2.Cdo
    public final void clear() {
        int i = this.f1474if;
        for (int i2 = 0; i2 < i; i2++) {
            HE mo330do = mo330do(i2);
            if (mo330do != null) {
                mo330do.m824if(this.f1468do);
            }
        }
        for (int i3 = 0; i3 < this.f1467do; i3++) {
            this.f1473for[i3] = -1;
            this.f1475if[i3] = -1;
        }
        for (int i4 = 0; i4 < 16; i4++) {
            this.f1471do[i4] = -1;
        }
        this.f1474if = 0;
        this.f1472for = -1;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m922const(int i, HE he, float f) {
        this.f1473for[i] = he.f1316do;
        this.f1470do[i] = f;
        this.f1476new[i] = -1;
        this.f1477try[i] = -1;
        he.m822do(this.f1468do);
        he.f1314case++;
        this.f1474if++;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: do */
    public final HE mo330do(int i) {
        int i2 = this.f1474if;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f1472for;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return ((HE[]) this.f1469do.f13292new)[this.f1473for[i3]];
            }
            i3 = this.f1477try[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: else */
    public final void mo331else(HE he, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int m923final = m923final(he);
            if (m923final == -1) {
                mo327break(he, f);
                return;
            }
            float[] fArr = this.f1470do;
            float f2 = fArr[m923final] + f;
            fArr[m923final] = f2;
            if (f2 <= -0.001f || f2 >= 0.001f) {
                return;
            }
            fArr[m923final] = 0.0f;
            mo336this(he, z);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final int m923final(HE he) {
        if (this.f1474if == 0) {
            return -1;
        }
        int i = he.f1316do;
        int i2 = this.f1471do[i % 16];
        if (i2 == -1) {
            return -1;
        }
        if (this.f1473for[i2] == i) {
            return i2;
        }
        do {
            i2 = this.f1475if[i2];
            if (i2 == -1) {
                break;
            }
        } while (this.f1473for[i2] != i);
        if (i2 != -1 && this.f1473for[i2] == i) {
            return i2;
        }
        return -1;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: for */
    public final void mo332for(float f) {
        int i = this.f1474if;
        int i2 = this.f1472for;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f1470do;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f1477try[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: goto */
    public final float mo333goto(HE he) {
        int m923final = m923final(he);
        if (m923final != -1) {
            return this.f1470do[m923final];
        }
        return 0.0f;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: if */
    public final int mo334if() {
        return this.f1474if;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: new */
    public final void mo335new() {
        int i = this.f1474if;
        int i2 = this.f1472for;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f1470do;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f1477try[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: this */
    public final float mo336this(HE he, boolean z) {
        int[] iArr;
        int i;
        int m923final = m923final(he);
        if (m923final == -1) {
            return 0.0f;
        }
        int i2 = he.f1316do;
        int i3 = i2 % 16;
        int[] iArr2 = this.f1471do;
        int i4 = iArr2[i3];
        if (i4 != -1) {
            if (this.f1473for[i4] == i2) {
                int[] iArr3 = this.f1475if;
                iArr2[i3] = iArr3[i4];
                iArr3[i4] = -1;
            } else {
                while (true) {
                    iArr = this.f1475if;
                    i = iArr[i4];
                    if (i == -1 || this.f1473for[i] == i2) {
                        break;
                    }
                    i4 = i;
                }
                if (i != -1 && this.f1473for[i] == i2) {
                    iArr[i4] = iArr[i];
                    iArr[i] = -1;
                }
            }
        }
        float f = this.f1470do[m923final];
        if (this.f1472for == m923final) {
            this.f1472for = this.f1477try[m923final];
        }
        this.f1473for[m923final] = -1;
        int[] iArr4 = this.f1476new;
        int i5 = iArr4[m923final];
        if (i5 != -1) {
            int[] iArr5 = this.f1477try;
            iArr5[i5] = iArr5[m923final];
        }
        int i6 = this.f1477try[m923final];
        if (i6 != -1) {
            iArr4[i6] = iArr4[m923final];
        }
        this.f1474if--;
        he.f1314case--;
        if (z) {
            he.m824if(this.f1468do);
        }
        return f;
    }

    public final String toString() {
        String str = hashCode() + " { ";
        int i = this.f1474if;
        for (int i2 = 0; i2 < i; i2++) {
            HE mo330do = mo330do(i2);
            if (mo330do != null) {
                String str2 = str + mo330do + " = " + mo329catch(i2) + " ";
                int m923final = m923final(mo330do);
                String m7816case = Cpublic.m7816case(str2, "[p: ");
                int i3 = this.f1476new[m923final];
                C2861hI c2861hI = this.f1469do;
                String m7816case2 = Cpublic.m7816case(i3 != -1 ? m7816case + ((HE[]) c2861hI.f13292new)[this.f1473for[this.f1476new[m923final]]] : Cpublic.m7816case(m7816case, IntegrityManager.INTEGRITY_TYPE_NONE), ", n: ");
                str = Cpublic.m7816case(this.f1477try[m923final] != -1 ? m7816case2 + ((HE[]) c2861hI.f13292new)[this.f1473for[this.f1477try[m923final]]] : Cpublic.m7816case(m7816case2, IntegrityManager.INTEGRITY_TYPE_NONE), "]");
            }
        }
        return Cpublic.m7816case(str, " }");
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: try */
    public final boolean mo337try(HE he) {
        return m923final(he) != -1;
    }
}
