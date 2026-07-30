package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.SQ;

@SafeParcelable.Class(creator = "SleepSegmentEventCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class SleepSegmentEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepSegmentEvent> CREATOR = new SQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getStartTimeMillis", id = 1)
    public final long f10254do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getStatus", id = 3)
    public final int f10255for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(getter = "getEndTimeMillis", id = 2)
    public final long f10256if;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getMissingDataDurationMinutes", id = 4)
    public final int f10257new;

    /* renamed from: try, reason: not valid java name */
    @SafeParcelable.Field(getter = "getNinetiethPctConfidence", id = 5)
    public final int f10258try;

    @ShowFirstParty
    @SafeParcelable.Constructor
    public SleepSegmentEvent(@SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 1) long j, @SafeParcelable.Param(id = 2) long j2) {
        Preconditions.checkArgument(j <= j2, "endTimeMillis must be greater than or equal to startTimeMillis");
        this.f10254do = j;
        this.f10256if = j2;
        this.f10255for = i;
        this.f10257new = i2;
        this.f10258try = i3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SleepSegmentEvent) {
            SleepSegmentEvent sleepSegmentEvent = (SleepSegmentEvent) obj;
            if (this.f10254do == sleepSegmentEvent.f10254do && this.f10256if == sleepSegmentEvent.f10256if && this.f10255for == sleepSegmentEvent.f10255for && this.f10257new == sleepSegmentEvent.f10257new && this.f10258try == sleepSegmentEvent.f10258try) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f10254do), Long.valueOf(this.f10256if), Integer.valueOf(this.f10255for));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(84);
        sb.append("startMillis=");
        sb.append(this.f10254do);
        sb.append(", endMillis=");
        sb.append(this.f10256if);
        sb.append(", status=");
        sb.append(this.f10255for);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.f10254do);
        SafeParcelWriter.writeLong(parcel, 2, this.f10256if);
        SafeParcelWriter.writeInt(parcel, 3, this.f10255for);
        SafeParcelWriter.writeInt(parcel, 4, this.f10257new);
        SafeParcelWriter.writeInt(parcel, 5, this.f10258try);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
