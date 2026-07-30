package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.l.b;
import java.util.List;

/* loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f3439a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3440b;

    /* renamed from: c, reason: collision with root package name */
    public int f3441c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3442d;
    public final String e;
    public final String f;
    public final int g;
    public final List h;
    public final String i;
    public final long j;
    public int k;
    public final String l;
    public final float m;
    public final long n;
    public long o = -1;

    public WakeLockEvent(int i, long j, int i2, String str, int i3, List list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5) {
        this.f3439a = i;
        this.f3440b = j;
        this.f3441c = i2;
        this.f3442d = str;
        this.e = str3;
        this.f = str5;
        this.g = i3;
        this.h = list;
        this.i = str2;
        this.j = j2;
        this.k = i4;
        this.l = str4;
        this.m = f;
        this.n = j3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3439a);
        a.Y(parcel, 2, this.f3440b);
        a.c0(parcel, 4, this.f3442d, false);
        a.s0(parcel, 5, this.g);
        List<String> list = this.h;
        if (list != null) {
            int x0 = a.x0(parcel, 6);
            parcel.writeStringList(list);
            a.H0(parcel, x0);
        }
        a.Y(parcel, 8, this.j);
        a.c0(parcel, 10, this.e, false);
        a.s0(parcel, 11, this.f3441c);
        a.c0(parcel, 12, this.i, false);
        a.c0(parcel, 13, this.l, false);
        a.s0(parcel, 14, this.k);
        float f = this.m;
        a.B0(parcel, 15, 4);
        parcel.writeFloat(f);
        a.Y(parcel, 16, this.n);
        a.c0(parcel, 17, this.f, false);
        a.H0(parcel, q0);
    }
}
