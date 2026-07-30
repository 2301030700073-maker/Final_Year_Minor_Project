package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class HE {

    /* renamed from: do, reason: not valid java name */
    public float f1315do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1317do;

    /* renamed from: new, reason: not valid java name */
    public int f1324new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f1316do = -1;

    /* renamed from: if, reason: not valid java name */
    public int f1321if = -1;

    /* renamed from: for, reason: not valid java name */
    public int f1320for = 0;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f1322if = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f1318do = new float[9];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final float[] f1323if = new float[9];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public G2[] f1319do = new G2[16];

    /* renamed from: try, reason: not valid java name */
    public int f1325try = 0;

    /* renamed from: case, reason: not valid java name */
    public int f1314case = 0;

    public HE(int i) {
        this.f1324new = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m822do(G2 g2) {
        int i = 0;
        while (true) {
            int i2 = this.f1325try;
            if (i >= i2) {
                G2[] g2Arr = this.f1319do;
                if (i2 >= g2Arr.length) {
                    this.f1319do = (G2[]) Arrays.copyOf(g2Arr, g2Arr.length * 2);
                }
                G2[] g2Arr2 = this.f1319do;
                int i3 = this.f1325try;
                g2Arr2[i3] = g2;
                this.f1325try = i3 + 1;
                return;
            }
            if (this.f1319do[i] == g2) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m823for() {
        this.f1324new = 5;
        this.f1320for = 0;
        this.f1316do = -1;
        this.f1321if = -1;
        this.f1315do = 0.0f;
        this.f1322if = false;
        int i = this.f1325try;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1319do[i2] = null;
        }
        this.f1325try = 0;
        this.f1314case = 0;
        this.f1317do = false;
        Arrays.fill(this.f1323if, 0.0f);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m824if(G2 g2) {
        int i = this.f1325try;
        int i2 = 0;
        while (i2 < i) {
            if (this.f1319do[i2] == g2) {
                while (i2 < i - 1) {
                    G2[] g2Arr = this.f1319do;
                    int i3 = i2 + 1;
                    g2Arr[i2] = g2Arr[i3];
                    i2 = i3;
                }
                this.f1325try--;
                return;
            }
            i2++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m825new(G2 g2) {
        int i = this.f1325try;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1319do[i2].mo656goto(g2, false);
        }
        this.f1325try = 0;
    }

    public final String toString() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + this.f1316do;
    }
}
