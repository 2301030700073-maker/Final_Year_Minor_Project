package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import c.b.a.c.d.h.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class BitmapTeleporter extends zzbkv implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f3388a;

    /* renamed from: b, reason: collision with root package name */
    public ParcelFileDescriptor f3389b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3390c;

    /* renamed from: d, reason: collision with root package name */
    public Bitmap f3391d = null;

    public BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.f3388a = i;
        this.f3389b = parcelFileDescriptor;
        this.f3390c = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f3389b == null) {
            throw null;
        }
        int q0 = c.b.a.c.b.a.q0(parcel);
        c.b.a.c.b.a.s0(parcel, 1, this.f3388a);
        c.b.a.c.b.a.b0(parcel, 2, this.f3389b, i | 1, false);
        c.b.a.c.b.a.s0(parcel, 3, this.f3390c);
        c.b.a.c.b.a.H0(parcel, q0);
        this.f3389b = null;
    }
}
