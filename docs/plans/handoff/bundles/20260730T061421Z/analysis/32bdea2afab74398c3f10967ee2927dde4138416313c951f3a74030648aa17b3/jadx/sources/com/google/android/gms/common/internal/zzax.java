package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.j.s;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public final class zzax extends zzbkv {
    public static final Parcelable.Creator CREATOR = new s();

    /* renamed from: a, reason: collision with root package name */
    public final int f3411a;

    /* renamed from: b, reason: collision with root package name */
    public IBinder f3412b;

    /* renamed from: c, reason: collision with root package name */
    public ConnectionResult f3413c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3414d;
    public boolean e;

    public zzax(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f3411a = i;
        this.f3412b = iBinder;
        this.f3413c = connectionResult;
        this.f3414d = z;
        this.e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzax)) {
            return false;
        }
        zzax zzaxVar = (zzax) obj;
        return this.f3413c.equals(zzaxVar.f3413c) && h().equals(zzaxVar.h());
    }

    public final IAccountAccessor h() {
        IBinder iBinder = this.f3412b;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
        return queryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) queryLocalInterface : new zzw(iBinder);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3411a);
        a.a0(parcel, 2, this.f3412b);
        a.b0(parcel, 3, this.f3413c, i, false);
        a.d0(parcel, 4, this.f3414d);
        a.d0(parcel, 5, this.e);
        a.H0(parcel, q0);
    }
}
