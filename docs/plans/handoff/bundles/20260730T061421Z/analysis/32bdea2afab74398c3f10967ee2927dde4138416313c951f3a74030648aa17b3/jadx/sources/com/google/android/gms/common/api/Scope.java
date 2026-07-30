package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.b.a.c.b.a;
import c.b.a.c.d.g.v;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public final class Scope extends zzbkv implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new v();

    /* renamed from: a, reason: collision with root package name */
    public final int f3371a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3372b;

    public Scope(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("scopeUri must not be null or empty");
        }
        this.f3371a = i;
        this.f3372b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f3372b.equals(((Scope) obj).f3372b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3372b.hashCode();
    }

    public final String toString() {
        return this.f3372b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3371a);
        a.c0(parcel, 2, this.f3372b, false);
        a.H0(parcel, q0);
    }
}
