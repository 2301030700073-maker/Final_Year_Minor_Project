package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.g.s;
import c.b.a.c.f.C0433g;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzeln extends zzbkv implements s {
    public static final Parcelable.Creator CREATOR = new C0433g();

    /* renamed from: a, reason: collision with root package name */
    public final int f3454a;

    /* renamed from: b, reason: collision with root package name */
    public int f3455b;

    /* renamed from: c, reason: collision with root package name */
    public Intent f3456c;

    public zzeln() {
        this.f3454a = 2;
        this.f3455b = 0;
        this.f3456c = null;
    }

    @Override // c.b.a.c.d.g.s
    public final Status g() {
        return this.f3455b == 0 ? Status.e : Status.g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3454a);
        a.s0(parcel, 2, this.f3455b);
        a.b0(parcel, 3, this.f3456c, i, false);
        a.H0(parcel, q0);
    }

    public zzeln(int i, int i2, Intent intent) {
        this.f3454a = i;
        this.f3455b = i2;
        this.f3456c = intent;
    }
}
