package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.h.b;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class RegistrationInfo extends zzbkv {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final String f3488a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3489b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f3490c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f3491d;
    public final boolean e;
    public final int[] f;
    public final String g;

    public RegistrationInfo(String str, int i, String[] strArr, byte[] bArr, boolean z, int[] iArr, String str2) {
        this.f3488a = str;
        this.f3489b = i;
        this.f3490c = strArr;
        this.f3491d = bArr;
        this.e = z;
        this.f = iArr;
        this.g = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.c0(parcel, 1, this.f3488a, false);
        a.s0(parcel, 2, this.f3489b);
        a.h0(parcel, 3, this.f3490c, false);
        a.e0(parcel, 4, this.f3491d, false);
        a.d0(parcel, 5, this.e);
        a.f0(parcel, 6, this.f, false);
        a.c0(parcel, 7, this.g, false);
        a.H0(parcel, q0);
    }
}
