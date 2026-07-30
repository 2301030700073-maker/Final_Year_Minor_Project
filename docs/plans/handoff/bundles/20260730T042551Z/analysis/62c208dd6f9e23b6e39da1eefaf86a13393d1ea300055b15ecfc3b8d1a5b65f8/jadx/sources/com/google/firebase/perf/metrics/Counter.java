package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public class Counter implements Parcelable {
    public static final Parcelable.Creator<Counter> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f11953break;

    /* renamed from: do, reason: not valid java name */
    public final AtomicLong f11954do;

    /* renamed from: com.google.firebase.perf.metrics.Counter$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<Counter> {
        @Override // android.os.Parcelable.Creator
        public final Counter createFromParcel(Parcel parcel) {
            return new Counter(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Counter[] newArray(int i) {
            return new Counter[i];
        }
    }

    public Counter(String str) {
        this.f11953break = str;
        this.f11954do = new AtomicLong(0L);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11953break);
        parcel.writeLong(this.f11954do.get());
    }

    public Counter(Parcel parcel) {
        this.f11953break = parcel.readString();
        this.f11954do = new AtomicLong(parcel.readLong());
    }
}
