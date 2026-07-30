package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.j.v;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public class ClientIdentity extends zzbkv {
    public static final Parcelable.Creator CREATOR = new v();

    /* renamed from: a, reason: collision with root package name */
    public final int f3401a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3402b;

    public ClientIdentity(int i, String str) {
        this.f3401a = i;
        this.f3402b = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ClientIdentity)) {
            ClientIdentity clientIdentity = (ClientIdentity) obj;
            if (clientIdentity.f3401a == this.f3401a && a.p0(clientIdentity.f3402b, this.f3402b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f3401a;
    }

    public String toString() {
        int i = this.f3401a;
        String str = this.f3402b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3401a);
        a.c0(parcel, 2, this.f3402b, false);
        a.H0(parcel, q0);
    }
}
