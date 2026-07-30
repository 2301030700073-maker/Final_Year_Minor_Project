package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.DT;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "ActivityRecognitionResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new DT();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(id = 2)
    public final long f10194do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 5)
    public final Bundle f10195do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 1)
    public final List<DetectedActivity> f10196do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(id = 4)
    public final int f10197for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(id = 3)
    public final long f10198if;

    @ShowFirstParty
    @SafeParcelable.Constructor
    public ActivityRecognitionResult(@SafeParcelable.Param(id = 1) ArrayList arrayList, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) int i, @SafeParcelable.Param(id = 5) Bundle bundle) {
        boolean z = false;
        Preconditions.checkArgument(arrayList != null && arrayList.size() > 0, "Must have at least 1 detected activity");
        if (j > 0 && j2 > 0) {
            z = true;
        }
        Preconditions.checkArgument(z, "Must set times");
        this.f10196do = arrayList;
        this.f10194do = j;
        this.f10198if = j2;
        this.f10197for = i;
        this.f10195do = bundle;
    }

    public static boolean f(Bundle bundle, Bundle bundle2) {
        int length;
        if (bundle == null) {
            return bundle2 == null;
        }
        if (bundle2 == null || bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if (obj == null) {
                if (obj2 != null) {
                    return false;
                }
            } else if (obj instanceof Bundle) {
                if (!f(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else {
                if (obj.getClass().isArray()) {
                    if (obj2 != null && obj2.getClass().isArray() && (length = Array.getLength(obj)) == Array.getLength(obj2)) {
                        for (int i = 0; i < length; i++) {
                            if (Objects.equal(Array.get(obj, i), Array.get(obj2, i))) {
                            }
                        }
                    }
                    return false;
                }
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
        }
        return true;
    }

    @ShowFirstParty
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
            if (this.f10194do == activityRecognitionResult.f10194do && this.f10198if == activityRecognitionResult.f10198if && this.f10197for == activityRecognitionResult.f10197for && Objects.equal(this.f10196do, activityRecognitionResult.f10196do) && f(this.f10195do, activityRecognitionResult.f10195do)) {
                return true;
            }
        }
        return false;
    }

    @ShowFirstParty
    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f10194do), Long.valueOf(this.f10198if), Integer.valueOf(this.f10197for), this.f10196do, this.f10195do);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f10196do);
        StringBuilder sb = new StringBuilder(valueOf.length() + 124);
        sb.append("ActivityRecognitionResult [probableActivities=");
        sb.append(valueOf);
        sb.append(", timeMillis=");
        sb.append(this.f10194do);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(this.f10198if);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f10196do, false);
        SafeParcelWriter.writeLong(parcel, 2, this.f10194do);
        SafeParcelWriter.writeLong(parcel, 3, this.f10198if);
        SafeParcelWriter.writeInt(parcel, 4, this.f10197for);
        SafeParcelWriter.writeBundle(parcel, 5, this.f10195do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
