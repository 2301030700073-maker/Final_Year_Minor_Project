package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.c.h;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CollectForDebugParcelable extends zzbkv {
    public static final Parcelable.Creator CREATOR = new h();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3349a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3350b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3351c;

    public CollectForDebugParcelable(boolean z, long j, long j2) {
        this.f3349a = z;
        this.f3350b = j;
        this.f3351c = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CollectForDebugParcelable) {
            CollectForDebugParcelable collectForDebugParcelable = (CollectForDebugParcelable) obj;
            if (this.f3349a == collectForDebugParcelable.f3349a && this.f3350b == collectForDebugParcelable.f3350b && this.f3351c == collectForDebugParcelable.f3351c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f3349a), Long.valueOf(this.f3350b), Long.valueOf(this.f3351c)});
    }

    public String toString() {
        return "CollectForDebugParcelable[skipPersistentStorage: " + this.f3349a + ",collectForDebugStartTimeMillis: " + this.f3350b + ",collectForDebugExpiryTimeMillis: " + this.f3351c + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.d0(parcel, 1, this.f3349a);
        a.Y(parcel, 2, this.f3351c);
        a.Y(parcel, 3, this.f3350b);
        a.H0(parcel, q0);
    }
}
