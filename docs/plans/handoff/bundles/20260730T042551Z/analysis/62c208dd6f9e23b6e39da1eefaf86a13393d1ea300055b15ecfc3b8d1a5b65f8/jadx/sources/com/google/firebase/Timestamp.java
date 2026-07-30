package com.google.firebase;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;
import defpackage.Cpublic;
import defpackage.InterfaceC2650dk;
import defpackage.V1;
import defpackage.Yx;

/* loaded from: classes3.dex */
public final class Timestamp implements Comparable<Timestamp>, Parcelable {
    public static final Parcelable.Creator<Timestamp> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final long f11864do;

    /* renamed from: for, reason: not valid java name */
    public final int f11865for;

    /* renamed from: com.google.firebase.Timestamp$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<Timestamp> {
        @Override // android.os.Parcelable.Creator
        public final Timestamp createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new Timestamp(parcel.readLong(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final Timestamp[] newArray(int i) {
            return new Timestamp[i];
        }
    }

    public Timestamp(long j, int i) {
        if (!(i >= 0 && i < 1000000000)) {
            throw new IllegalArgumentException(V1.m2494case("Timestamp nanoseconds out of range: ", i).toString());
        }
        if (!(-62135596800L <= j && j < 253402300800L)) {
            throw new IllegalArgumentException(Cpublic.m7828try("Timestamp seconds out of range: ", j).toString());
        }
        this.f11864do = j;
        this.f11865for = i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Comparable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final int compareTo(Timestamp timestamp) {
        C0173Do.m401try(timestamp, "other");
        InterfaceC2650dk[] interfaceC2650dkArr = {new Yx() { // from class: com.google.firebase.Timestamp.if
            @Override // defpackage.InterfaceC4059yp
            public final Object get(Object obj) {
                return Long.valueOf(((Timestamp) obj).f11864do);
            }
        }, new Yx() { // from class: com.google.firebase.Timestamp.for
            @Override // defpackage.InterfaceC4059yp
            public final Object get(Object obj) {
                return Integer.valueOf(((Timestamp) obj).f11865for);
            }
        }};
        for (int i = 0; i < 2; i++) {
            InterfaceC2650dk interfaceC2650dk = interfaceC2650dkArr[i];
            Comparable comparable = (Comparable) interfaceC2650dk.mo364this(this);
            Comparable comparable2 = (Comparable) interfaceC2650dk.mo364this(timestamp);
            int compareTo = comparable == comparable2 ? 0 : comparable == null ? -1 : comparable2 == null ? 1 : comparable.compareTo(comparable2);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof Timestamp) && compareTo((Timestamp) obj) == 0);
    }

    public final int hashCode() {
        long j = this.f11864do;
        return (((((int) j) * 37 * 37) + ((int) (j >> 32))) * 37) + this.f11865for;
    }

    public final String toString() {
        return "Timestamp(seconds=" + this.f11864do + ", nanoseconds=" + this.f11865for + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeLong(this.f11864do);
        parcel.writeInt(this.f11865for);
    }
}
