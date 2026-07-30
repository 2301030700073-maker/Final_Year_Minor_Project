package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C0815cV;
import defpackage.Creturn;
import defpackage.HU;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

@SafeParcelable.Class(creator = "ActivityTransitionRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityTransitionRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new C0815cV();

    /* renamed from: do, reason: not valid java name */
    public static final HU f10204do = new HU();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getTag", id = 2)
    public final String f10205break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getContextAttributionTag", id = 4)
    public final String f10206catch;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getActivityTransitions", id = 1)
    public final List<ActivityTransition> f10207do;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(getter = "getClients", id = 3)
    public final List<ClientIdentity> f10208if;

    @SafeParcelable.Constructor
    public ActivityTransitionRequest(@SafeParcelable.Param(id = 1) ArrayList arrayList, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) ArrayList arrayList2, @SafeParcelable.Param(id = 4) String str2) {
        Preconditions.checkNotNull(arrayList, "transitions can't be null");
        Preconditions.checkArgument(arrayList.size() > 0, "transitions can't be empty.");
        Preconditions.checkNotNull(arrayList);
        TreeSet treeSet = new TreeSet(f10204do);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ActivityTransition activityTransition = (ActivityTransition) it.next();
            Preconditions.checkArgument(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.f10207do = DesugarCollections.unmodifiableList(arrayList);
        this.f10205break = str;
        this.f10208if = arrayList2 == null ? Collections.emptyList() : DesugarCollections.unmodifiableList(arrayList2);
        this.f10206catch = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
            if (Objects.equal(this.f10207do, activityTransitionRequest.f10207do) && Objects.equal(this.f10205break, activityTransitionRequest.f10205break) && Objects.equal(this.f10206catch, activityTransitionRequest.f10206catch) && Objects.equal(this.f10208if, activityTransitionRequest.f10208if)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f10207do.hashCode() * 31;
        String str = this.f10205break;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        List<ClientIdentity> list = this.f10208if;
        int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.f10206catch;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f10207do);
        String valueOf2 = String.valueOf(this.f10208if);
        int length = valueOf.length();
        String str = this.f10205break;
        int length2 = String.valueOf(str).length();
        int length3 = valueOf2.length();
        String str2 = this.f10206catch;
        StringBuilder sb = new StringBuilder(length + 79 + length2 + length3 + String.valueOf(str2).length());
        Creturn.m7980goto(sb, "ActivityTransitionRequest [mTransitions=", valueOf, ", mTag='", str);
        Creturn.m7980goto(sb, "', mClients=", valueOf2, ", mAttributionTag=", str2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f10207do, false);
        SafeParcelWriter.writeString(parcel, 2, this.f10205break, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.f10208if, false);
        SafeParcelWriter.writeString(parcel, 4, this.f10206catch, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
