package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.a.a.a.a.b;
import c.b.a.c.b.a;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public final class zzo extends zzbkv {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f3346a;

    /* renamed from: b, reason: collision with root package name */
    public int f3347b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f3348c;

    public zzo(int i, int i2, Bundle bundle) {
        this.f3346a = i;
        this.f3347b = i2;
        this.f3348c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3346a);
        a.s0(parcel, 2, this.f3347b);
        a.Z(parcel, 3, this.f3348c, false);
        a.H0(parcel, q0);
    }
}
