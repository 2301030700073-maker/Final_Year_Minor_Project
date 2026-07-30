package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.AdError;
import defpackage.NJ;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes3.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final DateValidator f10899do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Month f10900do;

    /* renamed from: for, reason: not valid java name */
    public final int f10901for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Month f10902for;

    /* renamed from: if, reason: not valid java name */
    public final Month f10903if;

    /* renamed from: new, reason: not valid java name */
    public final int f10904new;

    /* renamed from: try, reason: not valid java name */
    public final int f10905try;

    public interface DateValidator extends Parcelable {
        /* renamed from: this, reason: not valid java name */
        boolean mo5782this(long j);
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<CalendarConstraints> {
        @Override // android.os.Parcelable.Creator
        public final CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: for, reason: not valid java name */
        public static final long f10906for = NJ.m1515do(Month.m5793do(1900, 0).f10923do);

        /* renamed from: new, reason: not valid java name */
        public static final long f10907new = NJ.m1515do(Month.m5793do(AdError.BROKEN_MEDIA_ERROR_CODE, 11).f10923do);

        /* renamed from: do, reason: not valid java name */
        public final int f10908do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final long f10909do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final DateValidator f10910do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Long f10911do;

        /* renamed from: if, reason: not valid java name */
        public final long f10912if;

        public Cif(CalendarConstraints calendarConstraints) {
            this.f10909do = f10906for;
            this.f10912if = f10907new;
            this.f10910do = new DateValidatorPointForward(Long.MIN_VALUE);
            this.f10909do = calendarConstraints.f10900do.f10923do;
            this.f10912if = calendarConstraints.f10903if.f10923do;
            this.f10911do = Long.valueOf(calendarConstraints.f10902for.f10923do);
            this.f10908do = calendarConstraints.f10901for;
            this.f10910do = calendarConstraints.f10899do;
        }
    }

    public CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i) {
        Objects.requireNonNull(month, "start cannot be null");
        Objects.requireNonNull(month2, "end cannot be null");
        Objects.requireNonNull(dateValidator, "validator cannot be null");
        this.f10900do = month;
        this.f10903if = month2;
        this.f10902for = month3;
        this.f10901for = i;
        this.f10899do = dateValidator;
        Calendar calendar = month.f10924do;
        if (month3 != null && calendar.compareTo(month3.f10924do) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.f10924do.compareTo(month2.f10924do) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i < 0 || i > NJ.m1521this(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        if (!(calendar instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        int i2 = month2.f10926new;
        int i3 = month.f10926new;
        this.f10905try = (month2.f10925for - month.f10925for) + ((i2 - i3) * 12) + 1;
        this.f10904new = (i2 - i3) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.f10900do.equals(calendarConstraints.f10900do) && this.f10903if.equals(calendarConstraints.f10903if) && Objects.equals(this.f10902for, calendarConstraints.f10902for) && this.f10901for == calendarConstraints.f10901for && this.f10899do.equals(calendarConstraints.f10899do);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10900do, this.f10903if, this.f10902for, Integer.valueOf(this.f10901for), this.f10899do});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f10900do, 0);
        parcel.writeParcelable(this.f10903if, 0);
        parcel.writeParcelable(this.f10902for, 0);
        parcel.writeParcelable(this.f10899do, 0);
        parcel.writeInt(this.f10901for);
    }
}
