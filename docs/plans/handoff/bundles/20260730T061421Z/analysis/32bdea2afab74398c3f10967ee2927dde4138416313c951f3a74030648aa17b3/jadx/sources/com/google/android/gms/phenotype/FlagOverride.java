package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.h.h;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class FlagOverride extends zzbkv {
    public static final Parcelable.Creator CREATOR = new h();

    /* renamed from: a, reason: collision with root package name */
    public final String f3483a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3484b;

    /* renamed from: c, reason: collision with root package name */
    public final Flag f3485c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f3486d;

    public FlagOverride(String str, String str2, Flag flag, boolean z) {
        this.f3483a = str;
        this.f3484b = str2;
        this.f3485c = flag;
        this.f3486d = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlagOverride)) {
            return false;
        }
        FlagOverride flagOverride = (FlagOverride) obj;
        return a.t0(this.f3483a, flagOverride.f3483a) && a.t0(this.f3484b, flagOverride.f3484b) && a.t0(this.f3485c, flagOverride.f3485c) && this.f3486d == flagOverride.f3486d;
    }

    public String h(StringBuilder sb) {
        sb.append("FlagOverride(");
        sb.append(this.f3483a);
        sb.append(", ");
        sb.append(this.f3484b);
        sb.append(", ");
        this.f3485c.h(sb);
        sb.append(", ");
        sb.append(this.f3486d);
        sb.append(")");
        return sb.toString();
    }

    public String toString() {
        return h(new StringBuilder());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.c0(parcel, 2, this.f3483a, false);
        a.c0(parcel, 3, this.f3484b, false);
        a.b0(parcel, 4, this.f3485c, i, false);
        a.d0(parcel, 5, this.f3486d);
        a.H0(parcel, q0);
    }
}
