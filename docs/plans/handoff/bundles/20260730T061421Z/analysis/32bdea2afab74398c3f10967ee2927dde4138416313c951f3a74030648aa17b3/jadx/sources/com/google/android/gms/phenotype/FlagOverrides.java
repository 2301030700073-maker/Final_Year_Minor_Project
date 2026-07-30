package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.h.i;
import com.google.android.gms.internal.zzbkv;
import java.util.List;

/* loaded from: classes.dex */
public class FlagOverrides extends zzbkv {
    public static final Parcelable.Creator CREATOR = new i();

    /* renamed from: a, reason: collision with root package name */
    public final List f3487a;

    public FlagOverrides(List list) {
        this.f3487a = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FlagOverrides) {
            return this.f3487a.equals(((FlagOverrides) obj).f3487a);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FlagOverrides(");
        boolean z = true;
        for (FlagOverride flagOverride : this.f3487a) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            flagOverride.h(sb);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.I0(parcel, 2, this.f3487a, false);
        a.H0(parcel, q0);
    }
}
