package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.o;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class Feature extends zzbkv {
    public static final Parcelable.Creator CREATOR = new o();

    /* renamed from: a, reason: collision with root package name */
    public final String f3366a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3367b;

    public Feature(String str, int i) {
        this.f3366a = str;
        this.f3367b = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.c0(parcel, 1, this.f3366a, false);
        a.s0(parcel, 2, this.f3367b);
        a.H0(parcel, q0);
    }
}
