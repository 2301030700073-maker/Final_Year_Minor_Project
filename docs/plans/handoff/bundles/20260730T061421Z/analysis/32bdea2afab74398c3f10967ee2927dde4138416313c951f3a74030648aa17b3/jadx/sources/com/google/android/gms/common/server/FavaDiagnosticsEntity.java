package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.k.b;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class FavaDiagnosticsEntity extends zzbkv implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f3419a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3420b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3421c;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.f3419a = i;
        this.f3420b = str;
        this.f3421c = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3419a);
        a.c0(parcel, 2, this.f3420b, false);
        a.s0(parcel, 3, this.f3421c);
        a.H0(parcel, q0);
    }
}
