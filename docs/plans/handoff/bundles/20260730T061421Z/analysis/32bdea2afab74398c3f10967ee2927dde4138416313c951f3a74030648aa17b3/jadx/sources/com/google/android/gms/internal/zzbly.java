package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.f.C0427a;

/* loaded from: classes.dex */
public final class zzbly extends zzbkv {
    public static final Parcelable.Creator CREATOR = new C0427a();

    /* renamed from: a, reason: collision with root package name */
    public final int f3446a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbma f3447b;

    public zzbly(int i, zzbma zzbmaVar) {
        this.f3446a = i;
        this.f3447b = zzbmaVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3446a);
        a.b0(parcel, 2, this.f3447b, i, false);
        a.H0(parcel, q0);
    }

    public zzbly(zzbma zzbmaVar) {
        this.f3446a = 1;
        this.f3447b = zzbmaVar;
    }
}
