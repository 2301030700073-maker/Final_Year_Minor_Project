package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.d.j.q;
import c.b.a.c.g.a.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PlaceReport extends zzbkv implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f3462a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3463b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3464c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3465d;

    public PlaceReport(int i, String str, String str2, String str3) {
        this.f3462a = i;
        this.f3463b = str;
        this.f3464c = str2;
        this.f3465d = str3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return c.b.a.c.b.a.p0(this.f3463b, placeReport.f3463b) && c.b.a.c.b.a.p0(this.f3464c, placeReport.f3464c) && c.b.a.c.b.a.p0(this.f3465d, placeReport.f3465d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3463b, this.f3464c, this.f3465d});
    }

    public String toString() {
        q Q = c.b.a.c.b.a.Q(this);
        Q.a("placeId", this.f3463b);
        Q.a("tag", this.f3464c);
        if (!"unknown".equals(this.f3465d)) {
            Q.a("source", this.f3465d);
        }
        return Q.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = c.b.a.c.b.a.q0(parcel);
        c.b.a.c.b.a.s0(parcel, 1, this.f3462a);
        c.b.a.c.b.a.c0(parcel, 2, this.f3463b, false);
        c.b.a.c.b.a.c0(parcel, 3, this.f3464c, false);
        c.b.a.c.b.a.c0(parcel, 4, this.f3465d, false);
        c.b.a.c.b.a.H0(parcel, q0);
    }
}
