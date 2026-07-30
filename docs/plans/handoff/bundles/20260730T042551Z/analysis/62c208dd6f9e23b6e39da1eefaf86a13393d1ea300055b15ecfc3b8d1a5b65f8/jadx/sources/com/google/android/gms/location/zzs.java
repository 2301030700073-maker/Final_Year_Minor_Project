package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.MV;

@ShowFirstParty
@SafeParcelable.Class(creator = "DeviceOrientationRequestCreator")
/* loaded from: classes3.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new MV();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_SMALLEST_ANGLE_CHANGE_RADIANS", id = 3)
    public final float f10279do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_MINIMUM_SAMPLING_PERIOD_MS", id = 2)
    public final long f10280do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_SHOULD_USE_MAG", id = 1)
    public final boolean f10281do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_NUM_UPDATES", id = 5)
    public final int f10282for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_EXPIRE_AT_MS", id = 4)
    public final long f10283if;

    public zzs() {
        this(true, 50L, 0.0f, Long.MAX_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return this.f10281do == zzsVar.f10281do && this.f10280do == zzsVar.f10280do && Float.compare(this.f10279do, zzsVar.f10279do) == 0 && this.f10283if == zzsVar.f10283if && this.f10282for == zzsVar.f10282for;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f10281do), Long.valueOf(this.f10280do), Float.valueOf(this.f10279do), Long.valueOf(this.f10283if), Integer.valueOf(this.f10282for));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceOrientationRequest[mShouldUseMag=");
        sb.append(this.f10281do);
        sb.append(" mMinimumSamplingPeriodMs=");
        sb.append(this.f10280do);
        sb.append(" mSmallestAngleChangeRadians=");
        sb.append(this.f10279do);
        long j = this.f10283if;
        if (j != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j - elapsedRealtime);
            sb.append("ms");
        }
        int i = this.f10282for;
        if (i != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(i);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f10281do);
        SafeParcelWriter.writeLong(parcel, 2, this.f10280do);
        SafeParcelWriter.writeFloat(parcel, 3, this.f10279do);
        SafeParcelWriter.writeLong(parcel, 4, this.f10283if);
        SafeParcelWriter.writeInt(parcel, 5, this.f10282for);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) float f, @SafeParcelable.Param(id = 4) long j2, @SafeParcelable.Param(id = 5) int i) {
        this.f10281do = z;
        this.f10280do = j;
        this.f10279do = f;
        this.f10283if = j2;
        this.f10282for = i;
    }
}
