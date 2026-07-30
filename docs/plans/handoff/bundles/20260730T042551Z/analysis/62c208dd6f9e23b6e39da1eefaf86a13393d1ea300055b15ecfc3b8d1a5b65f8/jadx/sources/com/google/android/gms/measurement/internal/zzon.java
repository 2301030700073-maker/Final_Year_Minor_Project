package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3218kV;
import defpackage.C3277lV;

@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
/* loaded from: classes3.dex */
public final class zzon extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzon> CREATOR = new C3277lV();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(id = 2)
    public final String f10352break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(id = 6)
    public final String f10353catch;

    /* renamed from: class, reason: not valid java name */
    @SafeParcelable.Field(id = 7)
    public final String f10354class;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(id = 3)
    public final long f10355do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 8)
    public final Double f10356do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 4)
    public final Long f10357do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(id = 1)
    public final int f10358for;

    public zzon(C3218kV c3218kV) {
        this(c3218kV.f14003for, c3218kV.f14004if, c3218kV.f14000do, c3218kV.f14001do);
    }

    public final Object f() {
        Long l = this.f10357do;
        if (l != null) {
            return l;
        }
        Double d = this.f10356do;
        if (d != null) {
            return d;
        }
        String str = this.f10353catch;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10358for);
        SafeParcelWriter.writeString(parcel, 2, this.f10352break, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f10355do);
        SafeParcelWriter.writeLongObject(parcel, 4, this.f10357do, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.f10353catch, false);
        SafeParcelWriter.writeString(parcel, 7, this.f10354class, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.f10356do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzon(String str, String str2, long j, Object obj) {
        Preconditions.checkNotEmpty(str);
        this.f10358for = 2;
        this.f10352break = str;
        this.f10355do = j;
        this.f10354class = str2;
        if (obj == null) {
            this.f10357do = null;
            this.f10356do = null;
            this.f10353catch = null;
            return;
        }
        if (obj instanceof Long) {
            this.f10357do = (Long) obj;
            this.f10356do = null;
            this.f10353catch = null;
        } else if (obj instanceof String) {
            this.f10357do = null;
            this.f10356do = null;
            this.f10353catch = (String) obj;
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("User attribute given of un-supported type");
            }
            this.f10357do = null;
            this.f10356do = (Double) obj;
            this.f10353catch = null;
        }
    }

    @SafeParcelable.Constructor
    public zzon(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) Long l, @SafeParcelable.Param(id = 5) Float f, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) Double d) {
        this.f10358for = i;
        this.f10352break = str;
        this.f10355do = j;
        this.f10357do = l;
        if (i == 1) {
            this.f10356do = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f10356do = d;
        }
        this.f10353catch = str2;
        this.f10354class = str3;
    }
}
