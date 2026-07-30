package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.FV;
import defpackage.V1;

@SafeParcelable.Class(creator = "DetectedActivityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class DetectedActivity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new FV();

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(id = 1)
    public final int f10211for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(id = 2)
    public final int f10212new;

    @SafeParcelable.Constructor
    public DetectedActivity(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2) {
        this.f10211for = i;
        this.f10212new = i2;
    }

    @ShowFirstParty
    public final boolean equals(Object obj) {
        if (obj instanceof DetectedActivity) {
            DetectedActivity detectedActivity = (DetectedActivity) obj;
            if (this.f10211for == detectedActivity.f10211for && this.f10212new == detectedActivity.f10212new) {
                return true;
            }
        }
        return false;
    }

    @ShowFirstParty
    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10211for), Integer.valueOf(this.f10212new));
    }

    public final String toString() {
        int i = this.f10211for;
        if (i > 22 || i < 0) {
            i = 4;
        }
        String num = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 7 ? i != 8 ? i != 16 ? i != 17 ? Integer.toString(i) : "IN_RAIL_VEHICLE" : "IN_ROAD_VEHICLE" : "RUNNING" : "WALKING" : "TILTING" : "UNKNOWN" : "STILL" : "ON_FOOT" : "ON_BICYCLE" : "IN_VEHICLE";
        StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 48);
        sb.append("DetectedActivity [type=");
        sb.append(num);
        sb.append(", confidence=");
        return V1.m2506this(sb, this.f10212new, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10211for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10212new);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
