package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.f.C0436j;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzax;

/* loaded from: classes.dex */
public final class zzelx extends zzbkv {
    public static final Parcelable.Creator CREATOR = new C0436j();

    /* renamed from: a, reason: collision with root package name */
    public final int f3459a;

    /* renamed from: b, reason: collision with root package name */
    public final ConnectionResult f3460b;

    /* renamed from: c, reason: collision with root package name */
    public final zzax f3461c;

    public zzelx(int i, ConnectionResult connectionResult, zzax zzaxVar) {
        this.f3459a = i;
        this.f3460b = connectionResult;
        this.f3461c = zzaxVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3459a);
        a.b0(parcel, 2, this.f3460b, i, false);
        a.b0(parcel, 3, this.f3461c, i, false);
        a.H0(parcel, q0);
    }

    public zzelx() {
        ConnectionResult connectionResult = new ConnectionResult(8, null);
        this.f3459a = 1;
        this.f3460b = connectionResult;
        this.f3461c = null;
    }
}
