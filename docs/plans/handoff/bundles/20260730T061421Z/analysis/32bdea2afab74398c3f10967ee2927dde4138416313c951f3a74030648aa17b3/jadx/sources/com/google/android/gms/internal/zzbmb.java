package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.f.C0429c;

/* loaded from: classes.dex */
public final class zzbmb extends zzbkv {
    public static final Parcelable.Creator CREATOR = new C0429c();

    /* renamed from: a, reason: collision with root package name */
    public final int f3451a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3452b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3453c;

    public zzbmb(int i, String str, int i2) {
        this.f3451a = i;
        this.f3452b = str;
        this.f3453c = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3451a);
        a.c0(parcel, 2, this.f3452b, false);
        a.s0(parcel, 3, this.f3453c);
        a.H0(parcel, q0);
    }

    public zzbmb(String str, int i) {
        this.f3451a = 1;
        this.f3452b = str;
        this.f3453c = i;
    }
}
