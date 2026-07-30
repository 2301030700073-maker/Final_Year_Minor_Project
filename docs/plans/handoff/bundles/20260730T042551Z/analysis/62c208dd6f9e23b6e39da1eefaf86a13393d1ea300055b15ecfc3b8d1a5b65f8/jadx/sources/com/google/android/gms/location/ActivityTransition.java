package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.WT;

@SafeParcelable.Class(creator = "ActivityTransitionCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityTransition extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new WT();

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getActivityType", id = 1)
    public final int f10199for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getTransitionType", id = 2)
    public final int f10200new;

    @SafeParcelable.Constructor
    public ActivityTransition(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2) {
        this.f10199for = i;
        this.f10200new = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.f10199for == activityTransition.f10199for && this.f10200new == activityTransition.f10200new;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10199for), Integer.valueOf(this.f10200new));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(75);
        sb.append("ActivityTransition [mActivityType=");
        sb.append(this.f10199for);
        sb.append(", mTransitionType=");
        sb.append(this.f10200new);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10199for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10200new);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
