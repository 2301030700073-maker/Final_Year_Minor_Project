package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbh {

    /* renamed from: do, reason: not valid java name */
    public int f9773do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final double[] f9774do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f9775do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String[] f9776do;

    /* renamed from: if, reason: not valid java name */
    public final double[] f9777if;

    public zzbh(zzbf zzbfVar) {
        int size = zzbfVar.f9772if.size();
        this.f9776do = (String[]) zzbfVar.f9770do.toArray(new String[size]);
        ArrayList arrayList = zzbfVar.f9772if;
        int size2 = arrayList.size();
        double[] dArr = new double[size2];
        for (int i = 0; i < size2; i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        this.f9774do = dArr;
        ArrayList arrayList2 = zzbfVar.f9771for;
        int size3 = arrayList2.size();
        double[] dArr2 = new double[size3];
        for (int i2 = 0; i2 < size3; i2++) {
            dArr2[i2] = ((Double) arrayList2.get(i2)).doubleValue();
        }
        this.f9777if = dArr2;
        this.f9775do = new int[size];
        this.f9773do = 0;
    }

    public final List zza() {
        String[] strArr = this.f9776do;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            double d = this.f9777if[i];
            double d2 = this.f9774do[i];
            int i2 = this.f9775do[i];
            arrayList.add(new zzbe(str, d, d2, i2 / this.f9773do, i2));
        }
        return arrayList;
    }

    public final void zzb(double d) {
        this.f9773do++;
        int i = 0;
        while (true) {
            double[] dArr = this.f9777if;
            if (i >= dArr.length) {
                return;
            }
            double d2 = dArr[i];
            if (d2 <= d && d < this.f9774do[i]) {
                int[] iArr = this.f9775do;
                iArr[i] = iArr[i] + 1;
            }
            if (d < d2) {
                return;
            } else {
                i++;
            }
        }
    }
}
