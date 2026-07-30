package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import c.b.a.c.d.k.a.a;
import c.b.a.c.f.C0428b;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbma extends zzbkv implements a {
    public static final Parcelable.Creator CREATOR = new C0428b();

    /* renamed from: a, reason: collision with root package name */
    public final int f3448a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f3449b;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f3450c;

    public zzbma(int i, ArrayList arrayList) {
        this.f3448a = i;
        this.f3449b = new HashMap();
        this.f3450c = new SparseArray();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            zzbmb zzbmbVar = (zzbmb) obj;
            String str = zzbmbVar.f3452b;
            int i3 = zzbmbVar.f3453c;
            this.f3449b.put(str, Integer.valueOf(i3));
            this.f3450c.put(i3, str);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = c.b.a.c.b.a.q0(parcel);
        c.b.a.c.b.a.s0(parcel, 1, this.f3448a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f3449b.keySet()) {
            arrayList.add(new zzbmb(str, ((Integer) this.f3449b.get(str)).intValue()));
        }
        c.b.a.c.b.a.I0(parcel, 2, arrayList, false);
        c.b.a.c.b.a.H0(parcel, q0);
    }

    public zzbma() {
        this.f3448a = 1;
        this.f3449b = new HashMap();
        this.f3450c = new SparseArray();
    }
}
