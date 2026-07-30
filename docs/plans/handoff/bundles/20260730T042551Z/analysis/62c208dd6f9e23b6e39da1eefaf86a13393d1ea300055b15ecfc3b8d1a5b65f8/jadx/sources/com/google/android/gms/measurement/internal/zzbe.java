package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3331mQ;
import defpackage.C3567qQ;
import java.util.Iterator;

@SafeParcelable.Class(creator = "EventParamsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzbe extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzbe> CREATOR = new C3567qQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "z", id = 2)
    public final Bundle f10312do;

    @SafeParcelable.Constructor
    public zzbe(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f10312do = bundle;
    }

    public final Double f() {
        return Double.valueOf(this.f10312do.getDouble("value"));
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new C3331mQ(this);
    }

    public final Bundle j() {
        return new Bundle(this.f10312do);
    }

    public final String toString() {
        return this.f10312do.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, j(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
