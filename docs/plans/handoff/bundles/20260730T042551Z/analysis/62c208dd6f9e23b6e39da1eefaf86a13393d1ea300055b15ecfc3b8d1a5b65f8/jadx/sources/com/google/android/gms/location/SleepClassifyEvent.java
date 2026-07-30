package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.QQ;

@SafeParcelable.Class(creator = "SleepClassifyEventCreator")
/* loaded from: classes3.dex */
public class SleepClassifyEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepClassifyEvent> CREATOR = new QQ();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getPresenceConfidence", id = 9)
    public final int f10245break;

    /* renamed from: case, reason: not valid java name */
    @SafeParcelable.Field(getter = "getLight", id = 4)
    public final int f10246case;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getConfidenceOverwrittenByAlarmClockTrigger", id = 8)
    public final boolean f10247do;

    /* renamed from: else, reason: not valid java name */
    @SafeParcelable.Field(getter = "getNoise", id = 5)
    public final int f10248else;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getTimestampSec", id = 1)
    public final int f10249for;

    /* renamed from: goto, reason: not valid java name */
    @SafeParcelable.Field(getter = "getLightDiff", id = 6)
    public final int f10250goto;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getConfidence", id = 2)
    public final int f10251new;

    /* renamed from: this, reason: not valid java name */
    @SafeParcelable.Field(getter = "getNightOrDay", id = 7)
    public final int f10252this;

    /* renamed from: try, reason: not valid java name */
    @SafeParcelable.Field(getter = "getMotion", id = 3)
    public final int f10253try;

    @ShowFirstParty
    @SafeParcelable.Constructor
    public SleepClassifyEvent(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) int i5, @SafeParcelable.Param(id = 6) int i6, @SafeParcelable.Param(id = 7) int i7, @SafeParcelable.Param(id = 9) int i8, @SafeParcelable.Param(id = 8) boolean z) {
        this.f10249for = i;
        this.f10251new = i2;
        this.f10253try = i3;
        this.f10246case = i4;
        this.f10248else = i5;
        this.f10250goto = i6;
        this.f10252this = i7;
        this.f10247do = z;
        this.f10245break = i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SleepClassifyEvent)) {
            return false;
        }
        SleepClassifyEvent sleepClassifyEvent = (SleepClassifyEvent) obj;
        return this.f10249for == sleepClassifyEvent.f10249for && this.f10251new == sleepClassifyEvent.f10251new;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10249for), Integer.valueOf(this.f10251new));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(65);
        sb.append(this.f10249for);
        sb.append(" Conf:");
        sb.append(this.f10251new);
        sb.append(" Motion:");
        sb.append(this.f10253try);
        sb.append(" Light:");
        sb.append(this.f10246case);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10249for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10251new);
        SafeParcelWriter.writeInt(parcel, 3, this.f10253try);
        SafeParcelWriter.writeInt(parcel, 4, this.f10246case);
        SafeParcelWriter.writeInt(parcel, 5, this.f10248else);
        SafeParcelWriter.writeInt(parcel, 6, this.f10250goto);
        SafeParcelWriter.writeInt(parcel, 7, this.f10252this);
        SafeParcelWriter.writeBoolean(parcel, 8, this.f10247do);
        SafeParcelWriter.writeInt(parcel, 9, this.f10245break);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
