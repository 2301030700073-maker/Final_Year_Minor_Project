package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.IQ;

@ShowFirstParty
@SafeParcelable.Class(creator = "NetworkLocationStatusCreator")
/* loaded from: classes3.dex */
public final class zzbo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbo> CREATOR = new IQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "NetworkLocationStatus.STATUS_INVALID_TIMESTAMP", id = 3)
    public final long f10268do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 1)
    public final int f10269for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "NetworkLocationStatus.STATUS_INVALID_TIMESTAMP", id = 4)
    public final long f10270if;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 2)
    public final int f10271new;

    @SafeParcelable.Constructor
    public zzbo(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) long j2) {
        this.f10269for = i;
        this.f10271new = i2;
        this.f10268do = j;
        this.f10270if = j2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbo) {
            zzbo zzboVar = (zzbo) obj;
            if (this.f10269for == zzboVar.f10269for && this.f10271new == zzboVar.f10271new && this.f10268do == zzboVar.f10268do && this.f10270if == zzboVar.f10270if) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10271new), Integer.valueOf(this.f10269for), Long.valueOf(this.f10270if), Long.valueOf(this.f10268do));
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.f10269for + " Cell status: " + this.f10271new + " elapsed time NS: " + this.f10270if + " system time ms: " + this.f10268do;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10269for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10271new);
        SafeParcelWriter.writeLong(parcel, 3, this.f10268do);
        SafeParcelWriter.writeLong(parcel, 4, this.f10270if);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
