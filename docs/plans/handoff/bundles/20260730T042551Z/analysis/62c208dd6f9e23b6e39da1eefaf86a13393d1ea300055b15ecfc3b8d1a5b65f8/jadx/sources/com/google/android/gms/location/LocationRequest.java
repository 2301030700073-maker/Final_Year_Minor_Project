package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3508pQ;

@SafeParcelable.Class(creator = "LocationRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new C3508pQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_SMALLEST_DISPLACEMENT", id = 7)
    public final float f10222do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_INTERVAL", id = 2)
    public final long f10223do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_EXPLICIT_FASTEST_INTERVAL", id = 4)
    public final boolean f10224do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_PRIORITY", id = 1)
    public final int f10225for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_EXPIRE_AT", id = 5)
    public final long f10226for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_FASTEST_INTERVAL", id = 3)
    public final long f10227if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValue = "false", id = 9)
    public final boolean f10228if;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_NUM_UPDATES", id = 6)
    public final int f10229new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_MAX_WAIT_TIME", id = 8)
    public final long f10230new;

    @Deprecated
    public LocationRequest() {
        this.f10225for = 102;
        this.f10223do = 3600000L;
        this.f10227if = 600000L;
        this.f10224do = false;
        this.f10226for = Long.MAX_VALUE;
        this.f10229new = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f10222do = 0.0f;
        this.f10230new = 0L;
        this.f10228if = false;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        if (this.f10225for != locationRequest.f10225for) {
            return false;
        }
        long j = this.f10223do;
        long j2 = locationRequest.f10223do;
        if (j != j2 || this.f10227if != locationRequest.f10227if || this.f10224do != locationRequest.f10224do || this.f10226for != locationRequest.f10226for || this.f10229new != locationRequest.f10229new || this.f10222do != locationRequest.f10222do) {
            return false;
        }
        long j3 = this.f10230new;
        if (j3 >= j) {
            j = j3;
        }
        long j4 = locationRequest.f10230new;
        if (j4 >= j2) {
            j2 = j4;
        }
        return j == j2 && this.f10228if == locationRequest.f10228if;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10225for), Long.valueOf(this.f10223do), Float.valueOf(this.f10222do), Long.valueOf(this.f10230new));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request[");
        int i = this.f10225for;
        sb.append(i != 100 ? i != 102 ? i != 104 ? i != 105 ? "???" : "PRIORITY_NO_POWER" : "PRIORITY_LOW_POWER" : "PRIORITY_BALANCED_POWER_ACCURACY" : "PRIORITY_HIGH_ACCURACY");
        long j = this.f10223do;
        if (i != 105) {
            sb.append(" requested=");
            sb.append(j);
            sb.append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.f10227if);
        sb.append("ms");
        long j2 = this.f10230new;
        if (j2 > j) {
            sb.append(" maxWait=");
            sb.append(j2);
            sb.append("ms");
        }
        float f = this.f10222do;
        if (f > 0.0f) {
            sb.append(" smallestDisplacement=");
            sb.append(f);
            sb.append("m");
        }
        long j3 = this.f10226for;
        if (j3 != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j3 - elapsedRealtime);
            sb.append("ms");
        }
        int i2 = this.f10229new;
        if (i2 != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(i2);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10225for);
        SafeParcelWriter.writeLong(parcel, 2, this.f10223do);
        SafeParcelWriter.writeLong(parcel, 3, this.f10227if);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f10224do);
        SafeParcelWriter.writeLong(parcel, 5, this.f10226for);
        SafeParcelWriter.writeInt(parcel, 6, this.f10229new);
        SafeParcelWriter.writeFloat(parcel, 7, this.f10222do);
        SafeParcelWriter.writeLong(parcel, 8, this.f10230new);
        SafeParcelWriter.writeBoolean(parcel, 9, this.f10228if);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public LocationRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) long j3, @SafeParcelable.Param(id = 6) int i2, @SafeParcelable.Param(id = 7) float f, @SafeParcelable.Param(id = 8) long j4, @SafeParcelable.Param(id = 9) boolean z2) {
        this.f10225for = i;
        this.f10223do = j;
        this.f10227if = j2;
        this.f10224do = z;
        this.f10226for = j3;
        this.f10229new = i2;
        this.f10222do = f;
        this.f10230new = j4;
        this.f10228if = z2;
    }
}
