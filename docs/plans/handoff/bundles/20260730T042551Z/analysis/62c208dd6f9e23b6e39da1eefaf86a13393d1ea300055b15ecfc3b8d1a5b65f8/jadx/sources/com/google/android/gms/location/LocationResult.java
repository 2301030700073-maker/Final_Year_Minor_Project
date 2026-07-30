package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3625rQ;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@SafeParcelable.Class(creator = "LocationResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable {

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationResult.DEFAULT_LOCATIONS", getter = "getLocations", id = 1)
    public final List<Location> f10232do;

    /* renamed from: if, reason: not valid java name */
    public static final List<Location> f10231if = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new C3625rQ();

    @SafeParcelable.Constructor
    public LocationResult(@SafeParcelable.Param(id = 1) List<Location> list) {
        this.f10232do = list;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        int size = locationResult.f10232do.size();
        List<Location> list = this.f10232do;
        if (size != list.size()) {
            return false;
        }
        Iterator<Location> it = locationResult.f10232do.iterator();
        Iterator<Location> it2 = list.iterator();
        while (it.hasNext()) {
            if (it2.next().getTime() != it.next().getTime()) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        Iterator<Location> it = this.f10232do.iterator();
        int i = 17;
        while (it.hasNext()) {
            long time = it.next().getTime();
            i = (i * 31) + ((int) (time ^ (time >>> 32)));
        }
        return i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f10232do);
        StringBuilder sb = new StringBuilder(valueOf.length() + 27);
        sb.append("LocationResult[locations: ");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f10232do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
