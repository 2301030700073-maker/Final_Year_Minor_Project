package com.google.firebase.perf.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class Timer implements Parcelable {
    public static final Parcelable.Creator<Timer> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public long f11971do;

    /* renamed from: if, reason: not valid java name */
    public long f11972if;

    /* renamed from: com.google.firebase.perf.util.Timer$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<Timer> {
        @Override // android.os.Parcelable.Creator
        public final Timer createFromParcel(Parcel parcel) {
            return new Timer(parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public final Timer[] newArray(int i) {
            return new Timer[i];
        }
    }

    public Timer() {
        this(TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis()), TimeUnit.NANOSECONDS.toMicros(SystemClock.elapsedRealtimeNanos()));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final long m6126do() {
        return new Timer().f11972if - this.f11972if;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6127for() {
        this.f11971do = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f11972if = TimeUnit.NANOSECONDS.toMicros(SystemClock.elapsedRealtimeNanos());
    }

    /* renamed from: if, reason: not valid java name */
    public final long m6128if() {
        return this.f11971do;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f11971do);
        parcel.writeLong(this.f11972if);
    }

    public Timer(long j, long j2) {
        this.f11971do = j;
        this.f11972if = j2;
    }
}
