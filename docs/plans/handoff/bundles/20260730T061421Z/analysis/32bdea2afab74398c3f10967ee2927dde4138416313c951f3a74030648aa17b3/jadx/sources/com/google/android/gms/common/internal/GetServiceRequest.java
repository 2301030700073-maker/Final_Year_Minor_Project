package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.c;
import c.b.a.c.d.j.y;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class GetServiceRequest extends zzbkv {
    public static final Parcelable.Creator CREATOR = new y();

    /* renamed from: a, reason: collision with root package name */
    public final int f3403a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3404b;

    /* renamed from: c, reason: collision with root package name */
    public int f3405c;

    /* renamed from: d, reason: collision with root package name */
    public String f3406d;
    public IBinder e;
    public Scope[] f;
    public Bundle g;
    public Account h;
    public Feature[] i;

    public GetServiceRequest(int i) {
        this.f3403a = 3;
        this.f3405c = c.f2873a;
        this.f3404b = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3403a);
        a.s0(parcel, 2, this.f3404b);
        a.s0(parcel, 3, this.f3405c);
        a.c0(parcel, 4, this.f3406d, false);
        a.a0(parcel, 5, this.e);
        a.g0(parcel, 6, this.f, i);
        a.Z(parcel, 7, this.g, false);
        a.b0(parcel, 8, this.h, i, false);
        a.g0(parcel, 10, this.i, i);
        a.H0(parcel, q0);
    }

    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr) {
        Account account2;
        IAccountAccessor zzwVar;
        this.f3403a = i;
        this.f3404b = i2;
        this.f3405c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f3406d = "com.google.android.gms";
        } else {
            this.f3406d = str;
        }
        if (i < 2) {
            if (iBinder != null) {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                if (queryLocalInterface instanceof IAccountAccessor) {
                    zzwVar = (IAccountAccessor) queryLocalInterface;
                } else {
                    zzwVar = new zzw(iBinder);
                }
                account2 = zza.zza(zzwVar);
            } else {
                account2 = null;
            }
            this.h = account2;
        } else {
            this.e = iBinder;
            this.h = account;
        }
        this.f = scopeArr;
        this.g = bundle;
        this.i = featureArr;
    }
}
