package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3571qU;

@SafeParcelable.Class(creator = "ActivityTransitionEventCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityTransitionEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new C3571qU();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getElapsedRealTimeNanos", id = 3)
    public final long f10201do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getActivityType", id = 1)
    public final int f10202for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getTransitionType", id = 2)
    public final int f10203new;

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r7 <= 1) goto L8;
     */
    @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActivityTransitionEvent(@com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param(id = 1) int r4, @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param(id = 3) long r5, @com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param(id = 2) int r7) {
        /*
            r3 = this;
            r3.<init>()
            if (r7 < 0) goto L9
            r0 = 1
            if (r7 > r0) goto L9
            goto La
        L9:
            r0 = 0
        La:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = 41
            r1.<init>(r2)
            java.lang.String r2 = "Transition type "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r2 = " is not valid."
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.google.android.gms.common.internal.Preconditions.checkArgument(r0, r1)
            r3.f10202for = r4
            r3.f10203new = r7
            r3.f10201do = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.ActivityTransitionEvent.<init>(int, long, int):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.f10202for == activityTransitionEvent.f10202for && this.f10203new == activityTransitionEvent.f10203new && this.f10201do == activityTransitionEvent.f10201do;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10202for), Integer.valueOf(this.f10203new), Long.valueOf(this.f10201do));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append("ActivityType ");
        sb2.append(this.f10202for);
        sb.append(sb2.toString());
        sb.append(" ");
        StringBuilder sb3 = new StringBuilder(26);
        sb3.append("TransitionType ");
        sb3.append(this.f10203new);
        sb.append(sb3.toString());
        sb.append(" ");
        StringBuilder sb4 = new StringBuilder(41);
        sb4.append("ElapsedRealTimeNanos ");
        sb4.append(this.f10201do);
        sb.append(sb4.toString());
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10202for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10203new);
        SafeParcelWriter.writeLong(parcel, 3, this.f10201do);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
