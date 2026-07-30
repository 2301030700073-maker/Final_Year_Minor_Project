package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.UQ;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "SleepSegmentRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class SleepSegmentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepSegmentRequest> CREATOR = new UQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getUserPreferredSleepWindow", id = 1)
    public final List<zzbx> f10259do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = AppEventsConstants.EVENT_PARAM_VALUE_NO, getter = "getRequestedDataType", id = 2)
    public final int f10260for;

    @ShowFirstParty
    @SafeParcelable.Constructor
    public SleepSegmentRequest(@SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 1) ArrayList arrayList) {
        this.f10259do = arrayList;
        this.f10260for = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SleepSegmentRequest)) {
            return false;
        }
        SleepSegmentRequest sleepSegmentRequest = (SleepSegmentRequest) obj;
        return Objects.equal(this.f10259do, sleepSegmentRequest.f10259do) && this.f10260for == sleepSegmentRequest.f10260for;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f10259do, Integer.valueOf(this.f10260for));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f10259do, false);
        SafeParcelWriter.writeInt(parcel, 2, this.f10260for);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
