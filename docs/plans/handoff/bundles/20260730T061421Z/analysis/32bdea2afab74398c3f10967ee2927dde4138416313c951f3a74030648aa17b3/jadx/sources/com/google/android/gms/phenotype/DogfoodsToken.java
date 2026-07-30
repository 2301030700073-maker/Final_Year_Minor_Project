package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.h.e;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class DogfoodsToken extends zzbkv {
    public static final Parcelable.Creator CREATOR = new e();

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f3474a;

    public DogfoodsToken(byte[] bArr) {
        this.f3474a = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.e0(parcel, 2, this.f3474a, false);
        a.H0(parcel, q0);
    }
}
