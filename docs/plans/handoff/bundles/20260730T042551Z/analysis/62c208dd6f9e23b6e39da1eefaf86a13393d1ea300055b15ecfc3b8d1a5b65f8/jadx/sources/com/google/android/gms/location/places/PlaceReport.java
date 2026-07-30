package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.JO;

@SafeParcelable.Class(creator = "PlaceReportCreator")
/* loaded from: classes3.dex */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new JO();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getPlaceId", id = 2)
    public final String f10261break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(getter = "getTag", id = 3)
    public final String f10262catch;

    /* renamed from: class, reason: not valid java name */
    @SafeParcelable.Field(getter = "getSource", id = 4)
    public final String f10263class;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.VersionField(id = 1)
    public final int f10264for;

    @SafeParcelable.Constructor
    public PlaceReport(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3) {
        this.f10264for = i;
        this.f10261break = str;
        this.f10262catch = str2;
        this.f10263class = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return Objects.equal(this.f10261break, placeReport.f10261break) && Objects.equal(this.f10262catch, placeReport.f10262catch) && Objects.equal(this.f10263class, placeReport.f10263class);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f10261break, this.f10262catch, this.f10263class);
    }

    public final String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add("placeId", this.f10261break);
        stringHelper.add(ViewHierarchyConstants.TAG_KEY, this.f10262catch);
        String str = this.f10263class;
        if (!"unknown".equals(str)) {
            stringHelper.add("source", str);
        }
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10264for);
        SafeParcelWriter.writeString(parcel, 2, this.f10261break, false);
        SafeParcelWriter.writeString(parcel, 3, this.f10262catch, false);
        SafeParcelWriter.writeString(parcel, 4, this.f10263class, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
