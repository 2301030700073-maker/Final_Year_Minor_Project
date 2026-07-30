package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.G2;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class D2 implements G2.Cdo {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final G2 f465do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2861hI f466do;

    /* renamed from: do, reason: not valid java name */
    public int f464do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f471if = 8;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f469do = new int[8];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int[] f472if = new int[8];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f468do = new float[8];

    /* renamed from: for, reason: not valid java name */
    public int f470for = -1;

    /* renamed from: new, reason: not valid java name */
    public int f473new = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f467do = false;

    public D2(G2 g2, C2861hI c2861hI) {
        this.f465do = g2;
        this.f466do = c2861hI;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: break, reason: not valid java name */
    public final void mo327break(HE he, float f) {
        if (f == 0.0f) {
            mo336this(he, true);
            return;
        }
        int i = this.f470for;
        G2 g2 = this.f465do;
        if (i == -1) {
            this.f470for = 0;
            this.f468do[0] = f;
            this.f469do[0] = he.f1316do;
            this.f472if[0] = -1;
            he.f1314case++;
            he.m822do(g2);
            this.f464do++;
            if (this.f467do) {
                return;
            }
            int i2 = this.f473new + 1;
            this.f473new = i2;
            int[] iArr = this.f469do;
            if (i2 >= iArr.length) {
                this.f467do = true;
                this.f473new = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f464do; i4++) {
            int i5 = this.f469do[i];
            int i6 = he.f1316do;
            if (i5 == i6) {
                this.f468do[i] = f;
                return;
            }
            if (i5 < i6) {
                i3 = i;
            }
            i = this.f472if[i];
        }
        int i7 = this.f473new;
        int i8 = i7 + 1;
        if (this.f467do) {
            int[] iArr2 = this.f469do;
            if (iArr2[i7] != -1) {
                i7 = iArr2.length;
            }
        } else {
            i7 = i8;
        }
        int[] iArr3 = this.f469do;
        if (i7 >= iArr3.length && this.f464do < iArr3.length) {
            int i9 = 0;
            while (true) {
                int[] iArr4 = this.f469do;
                if (i9 >= iArr4.length) {
                    break;
                }
                if (iArr4[i9] == -1) {
                    i7 = i9;
                    break;
                }
                i9++;
            }
        }
        int[] iArr5 = this.f469do;
        if (i7 >= iArr5.length) {
            i7 = iArr5.length;
            int i10 = this.f471if * 2;
            this.f471if = i10;
            this.f467do = false;
            this.f473new = i7 - 1;
            this.f468do = Arrays.copyOf(this.f468do, i10);
            this.f469do = Arrays.copyOf(this.f469do, this.f471if);
            this.f472if = Arrays.copyOf(this.f472if, this.f471if);
        }
        this.f469do[i7] = he.f1316do;
        this.f468do[i7] = f;
        if (i3 != -1) {
            int[] iArr6 = this.f472if;
            iArr6[i7] = iArr6[i3];
            iArr6[i3] = i7;
        } else {
            this.f472if[i7] = this.f470for;
            this.f470for = i7;
        }
        he.f1314case++;
        he.m822do(g2);
        int i11 = this.f464do + 1;
        this.f464do = i11;
        if (!this.f467do) {
            this.f473new++;
        }
        int[] iArr7 = this.f469do;
        if (i11 >= iArr7.length) {
            this.f467do = true;
        }
        if (this.f473new >= iArr7.length) {
            this.f467do = true;
            this.f473new = iArr7.length - 1;
        }
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: case, reason: not valid java name */
    public final float mo328case(G2 g2, boolean z) {
        float mo333goto = mo333goto(g2.f1117do);
        mo336this(g2.f1117do, z);
        G2.Cdo cdo = g2.f1116do;
        int mo334if = cdo.mo334if();
        for (int i = 0; i < mo334if; i++) {
            HE mo330do = cdo.mo330do(i);
            mo331else(mo330do, cdo.mo333goto(mo330do) * mo333goto, z);
        }
        return mo333goto;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: catch, reason: not valid java name */
    public final float mo329catch(int i) {
        int i2 = this.f470for;
        for (int i3 = 0; i2 != -1 && i3 < this.f464do; i3++) {
            if (i3 == i) {
                return this.f468do[i2];
            }
            i2 = this.f472if[i2];
        }
        return 0.0f;
    }

    @Override // defpackage.G2.Cdo
    public final void clear() {
        int i = this.f470for;
        for (int i2 = 0; i != -1 && i2 < this.f464do; i2++) {
            HE he = ((HE[]) this.f466do.f13292new)[this.f469do[i]];
            if (he != null) {
                he.m824if(this.f465do);
            }
            i = this.f472if[i];
        }
        this.f470for = -1;
        this.f473new = -1;
        this.f467do = false;
        this.f464do = 0;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: do, reason: not valid java name */
    public final HE mo330do(int i) {
        int i2 = this.f470for;
        for (int i3 = 0; i2 != -1 && i3 < this.f464do; i3++) {
            if (i3 == i) {
                return ((HE[]) this.f466do.f13292new)[this.f469do[i2]];
            }
            i2 = this.f472if[i2];
        }
        return null;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: else, reason: not valid java name */
    public final void mo331else(HE he, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.f470for;
            G2 g2 = this.f465do;
            if (i == -1) {
                this.f470for = 0;
                this.f468do[0] = f;
                this.f469do[0] = he.f1316do;
                this.f472if[0] = -1;
                he.f1314case++;
                he.m822do(g2);
                this.f464do++;
                if (this.f467do) {
                    return;
                }
                int i2 = this.f473new + 1;
                this.f473new = i2;
                int[] iArr = this.f469do;
                if (i2 >= iArr.length) {
                    this.f467do = true;
                    this.f473new = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f464do; i4++) {
                int i5 = this.f469do[i];
                int i6 = he.f1316do;
                if (i5 == i6) {
                    float[] fArr = this.f468do;
                    float f2 = fArr[i] + f;
                    if (f2 > -0.001f && f2 < 0.001f) {
                        f2 = 0.0f;
                    }
                    fArr[i] = f2;
                    if (f2 == 0.0f) {
                        if (i == this.f470for) {
                            this.f470for = this.f472if[i];
                        } else {
                            int[] iArr2 = this.f472if;
                            iArr2[i3] = iArr2[i];
                        }
                        if (z) {
                            he.m824if(g2);
                        }
                        if (this.f467do) {
                            this.f473new = i;
                        }
                        he.f1314case--;
                        this.f464do--;
                        return;
                    }
                    return;
                }
                if (i5 < i6) {
                    i3 = i;
                }
                i = this.f472if[i];
            }
            int i7 = this.f473new;
            int i8 = i7 + 1;
            if (this.f467do) {
                int[] iArr3 = this.f469do;
                if (iArr3[i7] != -1) {
                    i7 = iArr3.length;
                }
            } else {
                i7 = i8;
            }
            int[] iArr4 = this.f469do;
            if (i7 >= iArr4.length && this.f464do < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f469do;
                    if (i9 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i9] == -1) {
                        i7 = i9;
                        break;
                    }
                    i9++;
                }
            }
            int[] iArr6 = this.f469do;
            if (i7 >= iArr6.length) {
                i7 = iArr6.length;
                int i10 = this.f471if * 2;
                this.f471if = i10;
                this.f467do = false;
                this.f473new = i7 - 1;
                this.f468do = Arrays.copyOf(this.f468do, i10);
                this.f469do = Arrays.copyOf(this.f469do, this.f471if);
                this.f472if = Arrays.copyOf(this.f472if, this.f471if);
            }
            this.f469do[i7] = he.f1316do;
            this.f468do[i7] = f;
            if (i3 != -1) {
                int[] iArr7 = this.f472if;
                iArr7[i7] = iArr7[i3];
                iArr7[i3] = i7;
            } else {
                this.f472if[i7] = this.f470for;
                this.f470for = i7;
            }
            he.f1314case++;
            he.m822do(g2);
            this.f464do++;
            if (!this.f467do) {
                this.f473new++;
            }
            int i11 = this.f473new;
            int[] iArr8 = this.f469do;
            if (i11 >= iArr8.length) {
                this.f467do = true;
                this.f473new = iArr8.length - 1;
            }
        }
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: for, reason: not valid java name */
    public final void mo332for(float f) {
        int i = this.f470for;
        for (int i2 = 0; i != -1 && i2 < this.f464do; i2++) {
            float[] fArr = this.f468do;
            fArr[i] = fArr[i] / f;
            i = this.f472if[i];
        }
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: goto, reason: not valid java name */
    public final float mo333goto(HE he) {
        int i = this.f470for;
        for (int i2 = 0; i != -1 && i2 < this.f464do; i2++) {
            if (this.f469do[i] == he.f1316do) {
                return this.f468do[i];
            }
            i = this.f472if[i];
        }
        return 0.0f;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: if, reason: not valid java name */
    public final int mo334if() {
        return this.f464do;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: new, reason: not valid java name */
    public final void mo335new() {
        int i = this.f470for;
        for (int i2 = 0; i != -1 && i2 < this.f464do; i2++) {
            float[] fArr = this.f468do;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f472if[i];
        }
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: this, reason: not valid java name */
    public final float mo336this(HE he, boolean z) {
        int i = this.f470for;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f464do) {
            if (this.f469do[i] == he.f1316do) {
                if (i == this.f470for) {
                    this.f470for = this.f472if[i];
                } else {
                    int[] iArr = this.f472if;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    he.m824if(this.f465do);
                }
                he.f1314case--;
                this.f464do--;
                this.f469do[i] = -1;
                if (this.f467do) {
                    this.f473new = i;
                }
                return this.f468do[i];
            }
            i2++;
            i3 = i;
            i = this.f472if[i];
        }
        return 0.0f;
    }

    public final String toString() {
        int i = this.f470for;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        for (int i2 = 0; i != -1 && i2 < this.f464do; i2++) {
            str = (Cpublic.m7816case(str, " -> ") + this.f468do[i] + " : ") + ((HE[]) this.f466do.f13292new)[this.f469do[i]];
            i = this.f472if[i];
        }
        return str;
    }

    @Override // defpackage.G2.Cdo
    /* renamed from: try, reason: not valid java name */
    public final boolean mo337try(HE he) {
        int i = this.f470for;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f464do; i2++) {
            if (this.f469do[i] == he.f1316do) {
                return true;
            }
            i = this.f472if[i];
        }
        return false;
    }
}
