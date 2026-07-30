package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbf {

    /* renamed from: do, reason: not valid java name */
    public final ArrayList f9770do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    public final ArrayList f9772if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    public final ArrayList f9771for = new ArrayList();

    public final zzbf zza(String str, double d, double d2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        int i = 0;
        while (true) {
            arrayList = this.f9770do;
            int size = arrayList.size();
            arrayList2 = this.f9772if;
            arrayList3 = this.f9771for;
            if (i >= size) {
                break;
            }
            double doubleValue = ((Double) arrayList3.get(i)).doubleValue();
            double doubleValue2 = ((Double) arrayList2.get(i)).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        arrayList.add(i, str);
        arrayList3.add(i, Double.valueOf(d));
        arrayList2.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzbh zzb() {
        return new zzbh(this);
    }
}
