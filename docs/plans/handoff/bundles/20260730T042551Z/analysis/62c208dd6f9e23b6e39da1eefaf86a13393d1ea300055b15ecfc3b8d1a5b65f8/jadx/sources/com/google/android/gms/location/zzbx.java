package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.WQ;

@ShowFirstParty
@SafeParcelable.Class(creator = "UserPreferredSleepWindowCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzbx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbx> CREATOR = new WQ();

    /* renamed from: case, reason: not valid java name */
    @SafeParcelable.Field(getter = "getEndMinute", id = 4)
    public final int f10275case;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getStartHour", id = 1)
    public final int f10276for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getStartMinute", id = 2)
    public final int f10277new;

    /* renamed from: try, reason: not valid java name */
    @SafeParcelable.Field(getter = "getEndHour", id = 3)
    public final int f10278try;

    @SafeParcelable.Constructor
    public zzbx(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4) {
        Preconditions.checkState(i >= 0 && i <= 23, "Start hour must be in range [0, 23].");
        Preconditions.checkState(i2 >= 0 && i2 <= 59, "Start minute must be in range [0, 59].");
        Preconditions.checkState(i3 >= 0 && i3 <= 23, "End hour must be in range [0, 23].");
        Preconditions.checkState(i4 >= 0 && i4 <= 59, "End minute must be in range [0, 59].");
        Preconditions.checkState(((i + i2) + i3) + i4 > 0, "Parameters can't be all 0.");
        this.f10276for = i;
        this.f10277new = i2;
        this.f10278try = i3;
        this.f10275case = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbx)) {
            return false;
        }
        zzbx zzbxVar = (zzbx) obj;
        return this.f10276for == zzbxVar.f10276for && this.f10277new == zzbxVar.f10277new && this.f10278try == zzbxVar.f10278try && this.f10275case == zzbxVar.f10275case;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10276for), Integer.valueOf(this.f10277new), Integer.valueOf(this.f10278try), Integer.valueOf(this.f10275case));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(117);
        sb.append("UserPreferredSleepWindow [startHour=");
        sb.append(this.f10276for);
        sb.append(", startMinute=");
        sb.append(this.f10277new);
        sb.append(", endHour=");
        sb.append(this.f10278try);
        sb.append(", endMinute=");
        sb.append(this.f10275case);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10276for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10277new);
        SafeParcelWriter.writeInt(parcel, 3, this.f10278try);
        SafeParcelWriter.writeInt(parcel, 4, this.f10275case);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
