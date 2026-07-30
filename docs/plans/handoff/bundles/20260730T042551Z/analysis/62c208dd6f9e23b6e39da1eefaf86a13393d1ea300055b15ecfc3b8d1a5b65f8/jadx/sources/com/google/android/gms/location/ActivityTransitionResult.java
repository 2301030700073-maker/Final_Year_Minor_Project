package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3689sV;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "ActivityTransitionResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityTransitionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new C3689sV();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getExtras", id = 2)
    public final Bundle f10209do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getTransitionEvents", id = 1)
    public final List<ActivityTransitionEvent> f10210do;

    public ActivityTransitionResult() {
        throw null;
    }

    @ShowFirstParty
    @SafeParcelable.Constructor
    public ActivityTransitionResult(@SafeParcelable.Param(id = 1) ArrayList arrayList, @SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f10209do = null;
        Preconditions.checkNotNull(arrayList, "transitionEvents list can't be null.");
        if (!arrayList.isEmpty()) {
            for (int i = 1; i < arrayList.size(); i++) {
                Preconditions.checkArgument(((ActivityTransitionEvent) arrayList.get(i)).f10201do >= ((ActivityTransitionEvent) arrayList.get(i + (-1))).f10201do);
            }
        }
        this.f10210do = DesugarCollections.unmodifiableList(arrayList);
        this.f10209do = bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f10210do.equals(((ActivityTransitionResult) obj).f10210do);
    }

    public final int hashCode() {
        return this.f10210do.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f10210do, false);
        SafeParcelWriter.writeBundle(parcel, 2, this.f10209do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
