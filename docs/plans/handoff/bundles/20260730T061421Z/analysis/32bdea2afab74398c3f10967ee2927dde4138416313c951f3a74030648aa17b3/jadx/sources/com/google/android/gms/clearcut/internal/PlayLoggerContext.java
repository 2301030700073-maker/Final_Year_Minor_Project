package com.google.android.gms.clearcut.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.c.f.i;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PlayLoggerContext extends zzbkv {
    public static final Parcelable.Creator CREATOR = new i();

    /* renamed from: a, reason: collision with root package name */
    public final String f3356a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3357b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3358c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3359d;
    public final String e;
    public final boolean f;
    public final String g;
    public final boolean h;
    public final int i;

    public PlayLoggerContext(String str, int i, int i2, String str2, String str3, boolean z, String str4, boolean z2, int i3) {
        this.f3356a = str;
        this.f3357b = i;
        this.f3358c = i2;
        this.f3359d = str2;
        this.e = str3;
        this.f = z;
        this.g = str4;
        this.h = z2;
        this.i = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PlayLoggerContext) {
            PlayLoggerContext playLoggerContext = (PlayLoggerContext) obj;
            if (a.p0(this.f3356a, playLoggerContext.f3356a) && this.f3357b == playLoggerContext.f3357b && this.f3358c == playLoggerContext.f3358c && a.p0(this.g, playLoggerContext.g) && a.p0(this.f3359d, playLoggerContext.f3359d) && a.p0(this.e, playLoggerContext.e) && this.f == playLoggerContext.f && this.h == playLoggerContext.h && this.i == playLoggerContext.i) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3356a, Integer.valueOf(this.f3357b), Integer.valueOf(this.f3358c), this.g, this.f3359d, this.e, Boolean.valueOf(this.f), Boolean.valueOf(this.h), Integer.valueOf(this.i)});
    }

    public String toString() {
        StringBuilder g = c.a.c.a.a.g("PlayLoggerContext[", "package=");
        g.append(this.f3356a);
        g.append(',');
        g.append("packageVersionCode=");
        g.append(this.f3357b);
        g.append(',');
        g.append("logSource=");
        g.append(this.f3358c);
        g.append(',');
        g.append("logSourceName=");
        g.append(this.g);
        g.append(',');
        g.append("uploadAccount=");
        g.append(this.f3359d);
        g.append(',');
        g.append("loggingId=");
        g.append(this.e);
        g.append(',');
        g.append("logAndroidId=");
        g.append(this.f);
        g.append(',');
        g.append("isAnonymous=");
        g.append(this.h);
        g.append(',');
        g.append("qosTier=");
        g.append(this.i);
        g.append("]");
        return g.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.c0(parcel, 2, this.f3356a, false);
        a.s0(parcel, 3, this.f3357b);
        a.s0(parcel, 4, this.f3358c);
        a.c0(parcel, 5, this.f3359d, false);
        a.c0(parcel, 6, this.e, false);
        a.d0(parcel, 7, this.f);
        a.c0(parcel, 8, this.g, false);
        a.d0(parcel, 9, this.h);
        a.s0(parcel, 10, this.i);
        a.H0(parcel, q0);
    }

    public PlayLoggerContext(String str, int i, int i2, String str2, String str3, String str4, boolean z, int i3) {
        a.R(str);
        this.f3356a = str;
        this.f3357b = i;
        this.f3358c = i2;
        this.g = str2;
        this.f3359d = str3;
        this.e = str4;
        this.f = !z;
        this.h = z;
        this.i = i3;
    }
}
