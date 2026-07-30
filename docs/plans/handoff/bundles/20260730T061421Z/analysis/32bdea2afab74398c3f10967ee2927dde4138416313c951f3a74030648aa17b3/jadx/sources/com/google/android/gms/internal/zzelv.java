package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.f.C0435i;
import com.google.android.gms.common.internal.zzav;

/* loaded from: classes.dex */
public final class zzelv extends zzbkv {
    public static final Parcelable.Creator CREATOR = new C0435i();

    /* renamed from: a, reason: collision with root package name */
    public final int f3457a;

    /* renamed from: b, reason: collision with root package name */
    public final zzav f3458b;

    public zzelv(int i, zzav zzavVar) {
        this.f3457a = i;
        this.f3458b = zzavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3457a);
        a.b0(parcel, 2, this.f3458b, i, false);
        a.H0(parcel, q0);
    }

    public zzelv(zzav zzavVar) {
        this.f3457a = 1;
        this.f3458b = zzavVar;
    }
}
