package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.j.r;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public final class zzav extends zzbkv {
    public static final Parcelable.Creator CREATOR = new r();

    /* renamed from: a, reason: collision with root package name */
    public final int f3407a;

    /* renamed from: b, reason: collision with root package name */
    public final Account f3408b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3409c;

    /* renamed from: d, reason: collision with root package name */
    public final GoogleSignInAccount f3410d;

    public zzav(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f3407a = i;
        this.f3408b = account;
        this.f3409c = i2;
        this.f3410d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3407a);
        a.b0(parcel, 2, this.f3408b, i, false);
        a.s0(parcel, 3, this.f3409c);
        a.b0(parcel, 4, this.f3410d, i, false);
        a.H0(parcel, q0);
    }

    public zzav(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this.f3407a = 2;
        this.f3408b = account;
        this.f3409c = i;
        this.f3410d = googleSignInAccount;
    }
}
