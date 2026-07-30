package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.j.t;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public final class zzaz extends zzbkv {
    public static final Parcelable.Creator CREATOR = new t();

    /* renamed from: a, reason: collision with root package name */
    public final int f3415a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3416b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3417c;

    /* renamed from: d, reason: collision with root package name */
    @Deprecated
    public final Scope[] f3418d;

    public zzaz(int i, int i2, int i3, Scope[] scopeArr) {
        this.f3415a = i;
        this.f3416b = i2;
        this.f3417c = i3;
        this.f3418d = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3415a);
        a.s0(parcel, 2, this.f3416b);
        a.s0(parcel, 3, this.f3417c);
        a.g0(parcel, 4, this.f3418d, i);
        a.H0(parcel, q0);
    }
}
