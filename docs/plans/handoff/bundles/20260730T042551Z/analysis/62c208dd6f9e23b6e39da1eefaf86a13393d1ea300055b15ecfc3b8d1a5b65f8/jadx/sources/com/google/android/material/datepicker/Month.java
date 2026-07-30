package com.google.android.material.datepicker;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import defpackage.NJ;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public String f10921break;

    /* renamed from: case, reason: not valid java name */
    public final int f10922case;

    /* renamed from: do, reason: not valid java name */
    public final long f10923do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Calendar f10924do;

    /* renamed from: for, reason: not valid java name */
    public final int f10925for;

    /* renamed from: new, reason: not valid java name */
    public final int f10926new;

    /* renamed from: try, reason: not valid java name */
    public final int f10927try;

    /* renamed from: com.google.android.material.datepicker.Month$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        public final Month createFromParcel(Parcel parcel) {
            return Month.m5793do(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final Month[] newArray(int i) {
            return new Month[i];
        }
    }

    public Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar m1520new = NJ.m1520new(calendar);
        this.f10924do = m1520new;
        this.f10925for = m1520new.get(2);
        this.f10926new = m1520new.get(1);
        this.f10927try = m1520new.getMaximum(7);
        this.f10922case = m1520new.getActualMaximum(5);
        this.f10923do = m1520new.getTimeInMillis();
    }

    /* renamed from: do, reason: not valid java name */
    public static Month m5793do(int i, int i2) {
        Calendar m1521this = NJ.m1521this(null);
        m1521this.set(1, i);
        m1521this.set(2, i2);
        return new Month(m1521this);
    }

    /* renamed from: super, reason: not valid java name */
    public static Month m5794super(long j) {
        Calendar m1521this = NJ.m1521this(null);
        m1521this.setTimeInMillis(j);
        return new Month(m1521this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Month month) {
        return this.f10924do.compareTo(month.f10924do);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f10925for == month.f10925for && this.f10926new == month.f10926new;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10925for), Integer.valueOf(this.f10926new)});
    }

    /* renamed from: throw, reason: not valid java name */
    public final String m5795throw() {
        if (this.f10921break == null) {
            long timeInMillis = this.f10924do.getTimeInMillis();
            this.f10921break = Build.VERSION.SDK_INT >= 24 ? NJ.m1517for("yMMMM", Locale.getDefault()).format(new Date(timeInMillis)) : DateUtils.formatDateTime(null, timeInMillis, 8228);
        }
        return this.f10921break;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10926new);
        parcel.writeInt(this.f10925for);
    }
}
